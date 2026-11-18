class Ducktor < Formula
  desc "Web search from the terminal via the ducktor service (tor + DuckDuckGo)"
  homepage "https://github.com/a-kuz/homebrew-ducktor"
  url "https://github.com/a-kuz/homebrew-ducktor/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "765829116218af8c38ef42a7f5ead2bcd8e0f02d388dbf05b47b721b366af808"

  depends_on "jq"

  def install
    bin.install "ducktor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ducktor --version")
  end
end
