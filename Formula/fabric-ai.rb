class FabricAi < Formula
  desc "Open-source framework for augmenting humans using AI"
  homepage "https://danielmiessler.com/p/fabric-origin-story"
  url "https://github.com/danielmiessler/fabric/archive/refs/tags/v1.4.156.tar.gz"
  sha256 "1b774702dd4e4933411379a65ebd314c84e592b7265ab1ca08e846b8271739f3"
  license "MIT"
  head "https://github.com/danielmiessler/fabric.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  def caveats
    <<~EOS
      Run the following command to set up your directories and keys:
        fabric-ai --setup
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fabric-ai --version")
  end
end
