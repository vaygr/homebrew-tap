cask "yoink" do
  version "3.6.106"
  sha256 :no_check

  url "https://downloads.eternalstorms.at/Yoink.zip"
  name "Yoink"
  desc "Better drag-and-drop"
  homepage "https://eternalstorms.at/yoink/mac/"

  livecheck do
    url "https://updates.eternalstorms.at/YNKMC/latest"
    regex(/^(\d\.\d\.\d+)$/)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Yoink.app"

  zap trash: [
    "~/Library/Application Scripts/at.EternalStorms.Yoink-demo",
    "~/Library/Application Scripts/at.EternalStorms.Yoink-demo.ClipboardHistorySwiftUIExtensionSectionable",
    "~/Library/Application Scripts/at.EternalStorms.Yoink-demo.essForceTouchListener",
    "~/Library/Application Scripts/at.EternalStorms.Yoink-demo.Yoink-Clipboard-History",
    "~/Library/Application Scripts/at.EternalStorms.Yoink-demo.YoinkIntents",
    "~/Library/Application Scripts/at.EternalStorms.Yoink-demo.YoinkWebURLShareExtension",
    "~/Library/Application Scripts/G78RJ6NLJU.group.at.EternalStorms.Yoink",
    "~/Library/Containers/at.EternalStorms.Yoink-demo",
    "~/Library/Containers/at.EternalStorms.Yoink-demo.ClipboardHistorySwiftUIExtensionSectionable",
    "~/Library/Containers/at.EternalStorms.Yoink-demo.essForceTouchListener",
    "~/Library/Containers/at.EternalStorms.Yoink-demo.Yoink-Clipboard-History",
    "~/Library/Containers/at.EternalStorms.Yoink-demo.YoinkIntents",
    "~/Library/Containers/at.EternalStorms.Yoink-demo.YoinkWebURLShareExtension",
    "~/Library/Group Containers/G78RJ6NLJU.group.at.EternalStorms.Yoink",
  ]
end
