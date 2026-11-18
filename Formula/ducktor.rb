class Ducktor < Formula
  desc "Web search from the terminal via the ducktor service (tor + DuckDuckGo)"
  homepage "https://github.com/a-kuz/homebrew-ducktor"
  url "https://github.com/a-kuz/homebrew-ducktor/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "2b2a8d124689a7e1c86cade57dc3a12bfefc67a866bb3a892980be54a5c1ac2f"

  depends_on "jq"

  def install
    bin.install "ducktor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ducktor --version")
  end
end
