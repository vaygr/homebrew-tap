cask "grid-editor" do
  arch arm: "arm64", intel: "x64"

  version "1.6.5"
  sha256 arm:   "88453cf0176779b0e0a2e672dc5f97a5be59af30c6c171f02fb5635bc08ca5db",
         intel: "18710ce4ed8ce4377b381ef96bdedc7f5d7437ce076daeba3866590fec388aad"

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

  app "grid-editor.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/intechstudio.grid-editor.app.sfl3",
    "~/Library/Preferences/intechstudio.grid-editor.app.plist",
  ]
end
