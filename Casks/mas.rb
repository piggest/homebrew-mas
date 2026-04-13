cask "mas" do
  version "4.0.1"
  sha256 "c01cb2d6287ed734b54e32298d1d6576331728a573c1f5f27968e1c0b21ca878"

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
