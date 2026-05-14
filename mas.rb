cask "mas" do
  version "5.0.2"
  sha256 "ef4099f078635ab0f860d47c725f0702ff1ec4c979a5a189db7d27f28b9c6783"

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
