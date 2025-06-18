cask "quickrecorder" do
  version "1.6.9"
  sha256 "5a5901ff071a8a081c13224ffa8fa749c73e107b05b856b37e4368ac03d70ed0"

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
