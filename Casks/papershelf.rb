cask "papershelf" do
  version "1.11.4"
  sha256 "7d75a0c20ce0378f60ab6350188ddec0cc083d795ffba39176694c0d6f7c0a95"

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
