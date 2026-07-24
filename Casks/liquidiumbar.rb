cask "liquidiumbar" do
  version "0.1.6"
  sha256 "af6f37a4044794a03256039fbab24ac49e545475c9723a0f93f458c963673cf2"

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
