cask "passepartout" do
  arch arm: "arm64", intel: "x86_64"

  version "3.4.0"
  sha256 :no_check

  on_arm do
    url "https://github.com/passepartoutvpn/passepartout/actions/runs/15281819309/artifacts/3206250549",
        verified: "github.com/passepartoutvpn/passepartout/"
  end
  on_intel do
    url "https://github.com/passepartoutvpn/passepartout/actions/runs/15281819309/artifacts/3206246309",
        verified: "github.com/passepartoutvpn/passepartout/"
  end

  container nested: "Passepartout.#{arch}.dmg"

  name "Passepartout"
  desc "OpenVPN and WireGuard client for Apple platforms"
  homepage "https://passepartoutvpn.app/"

  depends_on macos: ">= :ventura"

  app "Passepartout.app"

  zap trash: [
    "~/Library/Application Scripts/DTDYD63ZX9.group.com.algoritmico.Passepartout",
    "~/Library/Application Scripts/com.algoritmico.mac.Passepartout",
    "~/Library/Containers/com.algoritmico.mac.Passepartout",
    "~/Library/Group Containers/DTDYD63ZX9.group.com.algoritmico.Passepartout",
  ]
end
