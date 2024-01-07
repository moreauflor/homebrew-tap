class AppleMusicDiscordRpc < Formula
  desc "Discord Rich Presence client for the macOS Apple Music app"
  homepage "https://github.com/moreauflor/apple-music-discord-rpc"
  url "https://github.com/moreauflor/apple-music-discord-rpc/archive/refs/tags/hi.tar.gz"
  sha256 "1f68f5cd39268aa9f29cccd74116f911fa2705b12ca3453a369163442776c1d1"
  license "MIT"
  head "https://github.com/moreauflor/apple-music-discord-rpc.git", branch: "main"

  depends_on "deno"

  def install
    bin.install "music-rpc.ts"
  end

  service do
    run opt_bin/"music-rpc.ts"
    keep_alive true
    environment_variables PATH: std_service_path_env
    working_dir var/"apple-music-discord-rpc"
    error_log_path var/"apple-music-discord-rpc/music-rpc.log"
  end
end
