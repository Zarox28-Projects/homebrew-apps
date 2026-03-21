cask "activate" do
  version "1.2.0"
  sha256 "192e0ed47b9d6b78088ffc5d731764a6929dce78434fc4d23faee9992b27b087"

  url "https://github.com/Zarox28-Projects/Activate/releases/download/v#{version}/Activate.dmg"
  name "Activate"
  desc "Activate MacOS is a playful macOS app that mimics the Windows activation message"
  homepage "https://github.com/Zarox28-Projects/Activate"

  app "Activate.app"

  zap trash: [
    "~/Library/Application Support/Activate",
    "~/Library/Preferences/com.Zarox28.Activate.plist",
    "~/Library/Caches/com.Zarox28.Activate",
    "~/Library/Logs/Activate",
    "~/Library/Saved Application State/com.Zarox28.Activate.savedState"
  ]
end