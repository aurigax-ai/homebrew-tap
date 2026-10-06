cask "ostia" do
  version "0.5.8"
  sha256 "994f314f6667bdba8830fa6006f3dc8a0d1ad9f6cbe858f9f35385fe49c4fb28"

  url "https://github.com/aurigax-ai/ostia/releases/download/v#{version}/ostia-#{version}-arm64.dmg"
  name "Ostia"
  desc "Terminal workspace for coding agents"
  homepage "https://github.com/aurigax-ai/ostia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Ostia.app"

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
