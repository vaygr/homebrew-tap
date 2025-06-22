cask "mewnotch" do
  version "1.0.0"
  sha256 "e242b4e16fd47d7f9d08dec1ebb90ee4d9acafd845764f63271b2b1bb9ef8756"

  url "https://github.com/monuk7735/mew-notch/releases/download/#{version}/MewNotch-v#{version}.dmg"
  name "MewNotch"
  desc "MacBook notch enhancer app"
  homepage "https://github.com/monuk7735/mew-notch"

  depends_on macos: ">= :sonoma"

  app "MewNotch.app"

  zap trash: [
    "~/Library/Application Support/MewNotch"
  ]
end
