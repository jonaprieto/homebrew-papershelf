cask "papershelf" do
  version "1.11.1"
  sha256 "67a6926c92941a835e7bfd526df9e2e6277708d977ad474f78cc1a2bcad053a5"

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
