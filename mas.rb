cask "mas" do
  version "5.4.24"
  sha256 "cd380667218541a72326293e6b0b616a436b18ac536030b270b5cc1ae91b0f9f"

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
