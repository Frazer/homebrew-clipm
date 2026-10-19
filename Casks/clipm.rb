cask "clipm" do
  version "1.0.5"
  sha256 "2fbf27ec72abaf2620b78caf51d6db447ca0ad2ed78c20b70293a6d49f4db188"

  url "https://github.com/Frazer/clipM/releases/download/v#{version}/clipM-#{version}.dmg"
  name "clip'M"
  desc "Clipboard manager for Apple silicon Macs"
  homepage "https://frazer.github.io/clipM/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "clipM.app"

  uninstall quit: "org.unitedvisions.ClipM"

  zap trash: [
    "~/Library/Application Support/ClipM",
    "~/Library/Caches/org.unitedvisions.ClipM",
    "~/Library/HTTPStorages/org.unitedvisions.ClipM",
    "~/Library/Preferences/org.unitedvisions.ClipM.plist",
  ]
end
