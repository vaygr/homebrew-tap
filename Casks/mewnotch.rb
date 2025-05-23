cask "mewnotch" do
  version "0.8.1"
  sha256 "23572396c37cae44b15afad0bb82f3845bfea7e3bb73178b895e64e012c08882"

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
