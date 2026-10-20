cask "mas" do
  version "5.4.22"
  sha256 "31667cb5c942a542374fc3165ad6644854a57c5a4e06ca72d993f7d2007a08e3"

  url "https://github.com/piggest/Mas/releases/download/v#{version}/Mas-v#{version}.dmg"
  name "Mas"
  desc "Screenshot and screen recording tool"
  homepage "https://github.com/piggest/Mas"

  app "Mas.app"

  zap trash: [
    "~/Library/Preferences/com.piggest.mas.plist",
    "~/Library/Preferences/com.example.Mas.plist",
  ]
end
