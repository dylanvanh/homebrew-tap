# LiquidiumBar Homebrew Tap

Install [LiquidiumBar](https://github.com/dylanvanh/LiquidiumBar) on an Apple Silicon Mac:

```bash
brew install --cask dylanvanh/tap/liquidiumbar
```

LiquidiumBar is not yet notarized by Apple. If macOS blocks the first launch,
try opening LiquidiumBar and then select **Open Anyway** in **System Settings →
Privacy & Security**.

Upgrade to the latest release:

```bash
brew upgrade --cask dylanvanh/tap/liquidiumbar
```

Uninstall the app:

```bash
brew uninstall --cask liquidiumbar
```

Remove the app and its locally stored settings and cached snapshots:

```bash
brew uninstall --zap --cask liquidiumbar
```
