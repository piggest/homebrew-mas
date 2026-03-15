cask "mas" do
  version "3.9.0"
  sha256 "8e489b2e88fd30a26b34b4e3bdb560ad61f2c599d15578f28eea30c45ee0d784"

  url "https://github.com/piggest/Mas/releases/download/v#{version}/Mas-#{version}.zip"
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
