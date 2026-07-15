cask "liquidiumbar" do
  version "0.1.1"
  sha256 "ce5118caf7c66f2ca11e197867f083cabcacca3d2ecffeed3db0f4d4800bb4b7"

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

  caveats <<~EOS
    LiquidiumBar is not yet notarized by Apple. On first launch, macOS may block
    the app. Try opening LiquidiumBar, then open System Settings > Privacy &
    Security and choose Open Anyway.
  EOS
end
