class AppleMusicDiscordRpc < Formula
  desc "Discord Rich Presence client for the macOS Apple Music app"
  homepage "https://github.com/NextFire/apple-music-discord-rpc"
  url "https://github.com/NextFire/apple-music-discord-rpc/archive/refs/tags/0.5.1.tar.gz"
  sha256 "d6e7916b2c44259f62b63fe2b559c596c4d62a90ac9f3ce11a01927389274b46"
  license "MIT"
  head "https://github.com/NextFire/apple-music-discord-rpc.git", branch: "main"

  depends_on "deno"

  def install
    bin.install "music-rpc.ts"
  end

  service do
    run bin/"music-rpc.ts"
    keep_alive true
    environment_variables PATH: std_service_path_env
    working_dir var/"apple-music-discord-rpc"
    error_log_path "music-rpc.log"
  end
end
