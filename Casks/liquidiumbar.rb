cask "liquidiumbar" do
  version "0.1.5"
  sha256 "ee830c7e94a27bdc87f0c40465732a54d256d56e32384038664eb8b566021765"

  url "https://github.com/dylanvanh/LiquidiumBar/releases/download/v#{version}/LiquidiumBar_#{version}_aarch64.dmg"
  name "LiquidiumBar"
  desc "Liquidium lending markets and portfolio monitor for the menu bar"
  homepage "https://github.com/dylanvanh/LiquidiumBar"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "LiquidiumBar.app"

  zap trash: [
    "~/Library/Application Support/app.liquidiumbar.desktop",
    "~/Library/Caches/app.liquidiumbar.desktop",
    "~/Library/HTTPStorages/app.liquidiumbar.desktop",
    "~/Library/Preferences/app.liquidiumbar.desktop.plist",
    "~/Library/Saved Application State/app.liquidiumbar.desktop.savedState",
    "~/Library/WebKit/app.liquidiumbar.desktop",
  ]
end
