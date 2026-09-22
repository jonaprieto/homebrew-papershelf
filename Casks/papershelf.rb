cask "papershelf" do
  version "1.16.0"
  sha256 "bebe1e4d104713c80a841f879f4a27c3224674e7994179a5af8130b9806929f4"

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
