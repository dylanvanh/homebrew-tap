cask "liquidiumbar" do
  version "0.1.7"
  sha256 "559fa752812d2206404b8b4e8e5c0d7e4ff7058cc8a496ecd4414ef97204eccd"

  url "https://github.com/dylanvanh/LiquidiumBar/releases/download/v#{version}/LiquidiumBar_#{version}_aarch64.dmg"
  name "LiquidiumBar"
  desc "Liquidium lending markets and portfolio monitor for the menu bar"
  homepage "https://github.com/dylanvanh/LiquidiumBar"

  auto_updates true
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
