cask "mewnotch" do
  version "0.9"
  sha256 "a2836e3658bab284c932aee0fbec067bc5ab163fedb48f5b6ba38a7a4ebfaaea"

  url "https://github.com/monuk7735/mew-notch/releases/download/#{version}/MewNotch-Installer.dmg"
  name "MewNotch"
  desc "MacBook notch enhancer app"
  homepage "https://github.com/monuk7735/mew-notch"

  depends_on macos: ">= :sonoma"

  app "MewNotch.app"

  zap trash: [
    "~/Library/Application Support/MewNotch"
  ]
end
