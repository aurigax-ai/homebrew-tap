cask "ostia" do
  version "0.5.9"
  sha256 "5bd539ebec889c3493d28dad9228cbf70eeb0dfda5305994dd6ca4e6179ba7c6"

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
