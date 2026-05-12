cask "mas" do
  version "5.0.0"
  sha256 "204eab272996ac7268c749d5e2880ba52ec6ff3b0e7f1f76b8fd6161488c6bcd"

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
