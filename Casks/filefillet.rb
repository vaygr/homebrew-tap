cask "filefillet" do
  version "2.6.1"
  sha256 "3719454ca337fd9438641326bf4316889f2b3efe692098670912db708a828316"

  url "https://filefillet-releases.s3.eu-central-1.amazonaws.com/FileFillet_v#{version}.zip",
      verified: "filefillet-releases.s3.eu-central-1.amazonaws.com/"
  name "FileFillet"
  desc "Efficient file organizer"
  homepage "https://www.filefillet.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :sonoma"

  app "FileFillet.app"

  zap trash: [
    "~/Library/Application Scripts/com.arensx.FileFillet",
    "~/Library/Containers/com.arensx.FileFillet",
  ]
end
