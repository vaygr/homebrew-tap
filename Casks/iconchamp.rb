cask "iconchamp" do
  version "1.5.1"
  sha256 "a336f63dd5c63991c5a0a2e1ba59f4267296b0f7c66d98948a55fab657875c07"

  url "https://github.com/jslegendre/appcast/raw/refs/heads/master/IconChamp/IconChamp.#{version}.zip",
      verified: "github.com/jslegendre/appcast/"
  name "IconChamp"
  desc "Icon theming app for macOS"
  homepage "https://www.macenhance.com/iconchamp"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :big_sur"

  app "IconChamp.app"

  uninstall launchctl: "com.macenhance.ICHelper",
            quit:      "com.macenhance.IconChamp",
            delete:    [
              "/Library/LaunchDaemons/com.macenhance.ICHelper.plist",
              "/Library/PrivilegedHelperTools/com.macenhance.ICHelper",
            ]

  zap trash: [
    "/Users/Shared/IconChamp",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macenhance.iconchamp.sfl*",
    "~/Library/Application Support/com.macenhance.IconChamp",
    "~/Library/Application Support/IconChamp",
    "~/Library/Caches/com.macenhance.IconChamp",
    "~/Library/HTTPStorages/com.macenhance.IconChamp",
    "~/Library/HTTPStorages/com.macenhance.IconChamp.binarycookies",
    "~/Library/Preferences/com.macenhance.IconChamp.plist",
    "~/Library/Saved Application State/com.macenhance.IconChamp.savedState",
  ]
end
