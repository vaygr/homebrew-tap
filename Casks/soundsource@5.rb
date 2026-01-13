cask "soundsource@5" do
  version "5.8.13"
  sha256 "c966c6d9f7c0983ff572dcaddc044ee1ae62920e9420f4df2edbe3965ccb5078"

  url "https://rogueamoeba.com/legacy/downloads/SoundSource-5813.zip"
  name "SoundSource"
  desc "Sound and audio controller"
  homepage "https://rogueamoeba.com/soundsource/"

  auto_updates true
  conflicts_with cask: [
    "soundsource",
    "soundsource@test",
  ]
  depends_on macos: ">= :sequoia"

  app "SoundSource.app"

  uninstall quit: "com.rogueamoeba.soundsource"

  zap trash: [
    "~/Library/Application Support/SoundSource",
    "~/Library/Caches/com.rogueamoeba.soundsource",
    "~/Library/HTTPStorages/com.rogueamoeba.soundsource",
    "~/Library/Preferences/com.rogueamoeba.soundsource.plist",
    "~/Library/WebKit/com.rogueamoeba.soundsource",
  ]
end
