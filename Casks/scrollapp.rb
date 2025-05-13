cask "scrollapp" do
  version "1.0"
  sha256 "88a2185d133134f1b6ed3761805d87f2d32d94ad16c2340b68050de35d408644"

  url "https://github.com/fromis-9/scrollapp/releases/download/v#{version}/Scrollapp_v#{version}.dmg",
      verified: "github.com/fromis-9/scrollapp/"
  name "Scrollapp"
  desc "Lightweight macOS utility that adds smooth auto-scrolling"
  homepage "https://scrollapp.app/"

  depends_on macos: ">= :big_sur"

  app "Scrollapp.app"

  zap trash: [
    "~/Library/Application Scripts/com.corinthians.Scrollapp",
    "~/Library/Containers/com.corinthians.Scrollapp",
  ]
end
