cask "ostia" do
  version "0.5.10"
  sha256 "050d667a3f13fb845bc5137a34b13669cc15d830c982c0163095a11466b03a27"

  url "https://github.com/aurigax-ai/ostia/releases/download/v#{version}/ostia-#{version}-arm64.dmg"
  name "Ostia"
  desc "Terminal workspace for coding agents"
  homepage "https://github.com/aurigax-ai/ostia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Ostia.app"
  binary "#{appdir}/Ostia.app/Contents/Resources/bin/ostia"

  zap trash: [
    "~/.config/ostia",
    "~/.config/pine",
    "~/.local/share/ostia",
    "~/.local/share/pine",
    "~/Library/Application Support/ostia",
    "~/Library/Application Support/pine",
    "~/Library/Caches/ai.aurigax.ostia",
    "~/Library/Caches/ai.aurigax.ostia.ShipIt",
    "~/Library/Preferences/ai.aurigax.ostia.plist",
    "~/Library/Saved Application State/ai.aurigax.ostia.savedState",
  ]
end
