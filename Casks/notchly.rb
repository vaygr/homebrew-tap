cask "notchly" do
  version "2.5.5"
  sha256 "adbb8ff453f0a7d858aaceebb9d8b72126fa0096d36bef26828ef09ceeba0bda"

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
