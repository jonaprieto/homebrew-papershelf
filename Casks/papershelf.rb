cask "papershelf" do
  version "1.11.0"
  sha256 "1fd1918066c628f99dd145a82b82624800f89d8cb07313dbe4f5d1c81925fb89"

  url "https://github.com/jonaprieto/papershelf/releases/download/v#{version}/PaperShelf-#{version}.dmg"
  name "PaperShelf"
  desc "macOS PDF reader and research library"
  homepage "https://jonaprieto.github.io/papershelf/"

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
