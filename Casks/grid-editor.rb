cask "grid-editor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "82f76c7ec99c2b10e91a587771f25bb55eb1ea27bc9c66fde3f06fd6feb83210",
         intel: "c3cce55ce44ebf20041dcd9f6baaa0b8a9bf9b384882ee04f9db68d6f65fa652"

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
