cask "liquidiumbar" do
  version "0.1.0"
  sha256 "60efefe70aa3b3d601569b10de93635cdba48082b0bb2cdb76f87dc3a5db3a6a"

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
