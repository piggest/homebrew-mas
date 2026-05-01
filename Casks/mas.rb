cask "mas" do
  version "4.2.1"
  sha256 "d2bb45a9429d134a9609132199d80f255a777c8b8cb38ff64eb8070212504eb7"

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