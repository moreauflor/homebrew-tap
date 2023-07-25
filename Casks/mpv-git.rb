cask "mpv-git" do
  version "0.36.0-14-g38ad2467a4"
  sha256 "6ee2db385008c2009c480057e48cc23d946ea69b297fdaf6f38657e617ed5fa2"

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
