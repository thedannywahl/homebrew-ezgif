class Ezgif < Formula
  desc "Optimized FFMPEG wrapper for creating gifs."
  homepage "https://github.com/thedannywahl/ezgif"
  url "https://github.com/thedannywahl/ezgif/archive/refs/tags/1.0.0.zip"
  sha256 "a3bffd87b652a09c1cc4f2010c25dcd4c00a31b8b27b9b2a4615b716db027cd4"
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
