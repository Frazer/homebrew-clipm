cask "clipm" do
  version "1.0.6"
  sha256 "331fafd3fb9b3a044463307c6946ad5fb07ae88a2982c4b7276163bf0ba8ea1b"

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
