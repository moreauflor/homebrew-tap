class AppleMusicDiscordRpc < Formula
  desc "Discord Rich Presence client for the macOS Apple Music app"
  homepage "https://github.com/moreauflor/apple-music-discord-rpc"
  url "https://github.com/moreauflor/apple-music-discord-rpc/releases/tag/0.8.1"
  sha256 "68e465fa5253be60b4c38a80c375c041902536b50d92ad2b1d694330c1b8ee19"
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
