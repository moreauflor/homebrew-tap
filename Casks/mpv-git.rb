cask "mpv-git" do
  version "0.35.0-442-gd16f971df5"
  sha256 "12ddf8b529ca353a59b19ac644d7762ceb3474e69fcc189389156b3e39eb50bc"

  url "https://github.com/NextFire/mpv-macos-git-builds/releases/download/mpv-#{version}/mpv-#{version}.tar",
      verified: "github.com/NextFire/mpv-macos-git-builds/"
  name "mpv"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  conflicts_with formula: "mpv", cask: "mpv"
  depends_on macos: ">= :sierra"

  app "mpv.app"
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"

  zap trash: [
    "~/.config/mpv",
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end
