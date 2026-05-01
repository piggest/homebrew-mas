cask "mas" do
  version "4.2.0"
  sha256 "e8c8eafb5401f4793e96b587e714902505ac41375cf1a74e24cc220eb9e452b9"

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