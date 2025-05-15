cask "notchly" do
  version "2.5.3"
  sha256 "0b33a3363c4a43da25d1ca8792cf370b1f9f610d4d597839e21ef2bf9eb7b6fb"

  url "https://github.com/mason-blumling/Notchly/releases/download/v#{version}/Notchly.app.zip"
  name "Notchly"
  desc "Productivity hub in a MacBook notch"
  homepage "https://github.com/mason-blumling/Notchly"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Notchly.app"

  zap trash: [
    "~/Library/Application Scripts/com.apple.Notchly",
    "~/Library/Containers/com.apple.Notchly",
  ]
end
