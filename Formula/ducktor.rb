class Ducktor < Formula
  desc "Web search from the terminal via the ducktor service (tor + DuckDuckGo)"
  homepage "https://github.com/a-kuz/homebrew-ducktor"
  url "https://github.com/a-kuz/homebrew-ducktor/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6bdc22c8d9ab8dc8dd9a8c949f6dd3daf71115dc6e710daf2ea819abf592bdc5"

  depends_on "jq"

  def install
    bin.install "ducktor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ducktor --version")
  end
end
