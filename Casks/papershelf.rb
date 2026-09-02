cask "papershelf" do
  version "1.11.2"
  sha256 "4ac83e7cf6ff8c36b4aea3b38dec0b5b97983afeb4560fdd6f5cb168efbc60fc"

  url "https://github.com/jonaprieto/papershelf/releases/download/v#{version}/PaperShelf-#{version}.dmg"
  name "PaperShelf"
  desc "macOS PDF reader and research library"
  homepage "https://jonaprieto.github.io/papershelf/"

  depends_on macos: :sonoma

  app "PaperShelf.app"

  caveats <<~EOS
    PaperShelf is ad-hoc signed while notarization is on the roadmap.
    If macOS blocks the first launch, right-click PaperShelf.app in Finder and choose Open.
  EOS

  zap trash: [
    "~/Library/Application Support/PaperShelf",
    "~/Library/Preferences/com.jonaprieto.pdfhammer.plist",
  ]
end
