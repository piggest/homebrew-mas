cask "mas" do
  version "4.3.0"
  sha256 "ea4b2cdfb5b49c7ee8fa6fbdc5cadf074d52cc86b672ab9efcc431759014803c"

  url "https://github.com/piggest/Mas/releases/download/v#{version}/Mas-v#{version}.dmg"
  name "Mas"
  desc "Screenshot and screen recording tool"
  homepage "https://github.com/piggest/Mas"

  app "Mas.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Mas.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.example.Mas.plist",
  ]
end
