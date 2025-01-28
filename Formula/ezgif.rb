class Ezgif < Formula
  desc "Optimized FFMPEG wrapper for creating gifs."
  homepage "https://github.com/thedannywahl/ezgif"
  url "https://github.com/thedannywahl/ezgif/archive/refs/tags/1.0.1.zip"
  sha256 "1fa7e61dccd2e518d5f717271d6826b44d2edae5d65eeb6f64e5d3d9bd8d2b05"
  license "Apache-2.0"

  depends_on "ffmpeg"

  def install
    bin.install "ezgif"
  end

  def caveats; <<~EOS
  Usage: ezgif </input/file.vid> [height: 720]
EOS
end

  test do
    system "#{bin}/ezgif -h"
  end
end
