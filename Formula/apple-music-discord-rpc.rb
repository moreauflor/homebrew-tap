class AppleMusicDiscordRpc < Formula
  desc "Discord Rich Presence client for the macOS Apple Music app"
  homepage "https://github.com/NextFire/apple-music-discord-rpc"
  url "https://github.com/NextFire/apple-music-discord-rpc/archive/refs/tags/0.7.0.tar.gz"
  sha256 "d4bbc763aaa0438cba9e12a289653885b185648128552b65e7652fa215b82aa1"
  license "MIT"
  head "https://github.com/NextFire/apple-music-discord-rpc.git", branch: "main"

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
