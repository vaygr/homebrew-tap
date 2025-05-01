class Fastrace < Formula
  desc "Fast, dependency-free traceroute implementation in pure C"
  homepage "https://github.com/davidesantangelo/fastrace"
  url "https://github.com/davidesantangelo/fastrace/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "12b28daf3f69fe98420cc0efa2e4b511a34e3ff64bc6deee40252ec9aafe96b0"
  license "BSD-2-Clause"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match("Error creating ICMP socket.", shell_output("#{bin}/fastrace 1.1.1.1 2>&1", 1))
  end
end
