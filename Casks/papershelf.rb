cask "papershelf" do
  version "1.11.3"
  sha256 "eae0ece145b21d1b30aa8177f77d68c7767ac5c3c86fdf7d1a355f49af147e45"

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
