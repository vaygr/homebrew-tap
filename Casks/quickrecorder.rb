cask "quickrecorder" do
  version "1.6.6"
  sha256 "10023824273d039c67efb66e0ac9e90a9bff5f5d2e9820fd5139c2242dbcd129"

  url "https://github.com/lihaoyun6/QuickRecorder/releases/download/#{version}/QuickRecorder_v#{version}.dmg",
      verified: "github.com/lihaoyun6/QuickRecorder/"
  name "QuickRecorder"
  desc "Lightweight and high-performance screen recorder for macOS"
  homepage "https://lihaoyun6.github.io/quickrecorder/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "QuickRecorder.app"

  zap trash: [
    "~/Library/HTTPStorages/com.lihaoyun6.QuickRecorder",
    "~/Library/Preferences/com.lihaoyun6.QuickRecorder.plist",
  ]
end
