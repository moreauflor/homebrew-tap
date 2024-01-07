class AppleMusicDiscordRpc < Formula
  desc "Discord Rich Presence client for the macOS Apple Music app"
  homepage "https://github.com/moreauflor/apple-music-discord-rpc"
  url "https://github.com/moreauflor/apple-music-discord-rpc/archive/refs/tags/0.8.1.tar.gz"
  sha256 "b605b9eeb9031057c11ba8fc5c8021bfaa3545e017f3d664f7873e9f62dfd30d"
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
