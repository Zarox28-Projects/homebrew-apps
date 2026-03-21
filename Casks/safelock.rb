cask "safelock" do
  version "2.2.0"
  sha256 "caea0447a4de162dd356566eeac2748837a025a1f424606d82ee53f40548e191"

  url "https://github.com/Zarox28-Projects/SafeLock/releases/download/v#{version}/SafeLock.dmg"
  name "SafeLock"
  desc "Simple MacOS app that locks the screen and records with the webcam if any movement is detected"
  homepage "https://github.com/Zarox28-Projects/SafeLock"

  app "SafeLock.app"

  depends_on formula: "ffmpeg"

  zap trash: [
    "~/Library/Application Support/SafeLock",
    "~/Library/Preferences/com.Zarox28.SafeLock.plist",
    "~/Library/Caches/com.Zarox28.SafeLock",
    "~/Library/Logs/SafeLock",
    "~/Library/Saved Application State/com.Zarox28.SafeLock.savedState"
  ]
end
