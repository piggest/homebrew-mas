cask "mas" do
  version "5.2.0"
  sha256 "9f36e0ce11edadc7b96192ed47fcc5428c4addf30a652c410262162618f9b77c"

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
