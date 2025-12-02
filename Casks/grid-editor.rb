cask "grid-editor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2"
  sha256 arm:   "d9f0662e35a8feb66c87f4379d1714d3e249408ea430352c1987f95d4ad3e8a0",
         intel: "195924a3135fa08e1e1cd6cb4c7c124a55871c2055f61030b2c2c6f8c47061b8"

  url "https://github.com/intechstudio/grid-editor/releases/download/v#{version}/grid-editor-macos-#{version}-#{arch}.dmg",
      verified: "github.com/intechstudio/grid-editor"
  name "Grid Editor"
  desc "Configuration software for Grid controllers"
  homepage "https://intech.studio/products/editor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Grid Editor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/intechstudio.grid-editor.app.sfl3",
    "~/Library/Preferences/intechstudio.grid-editor.app.plist",
  ]
end
