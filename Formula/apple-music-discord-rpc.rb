class AppleMusicDiscordRpc < Formula
  desc "Discord Rich Presence client for the macOS Apple Music app"
  homepage "https://github.com/moreauflor/apple-music-discord-rpc"
  url "https://github.com/moreauflor/apple-music-discord-rpc/releases/tag/0.8.1"
  sha256 "89d0b5d86082b170b46d7d4bffbbb829c4c9431b9ea77697a6014f8fba687b85"
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
