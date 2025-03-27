class FabricAi < Formula
  desc "Open-source framework for augmenting humans using AI"
  homepage "https://danielmiessler.com/p/fabric-origin-story"
  url "https://github.com/danielmiessler/fabric/archive/refs/tags/v1.4.165.tar.gz"
  sha256 "142ae04f1e58467ee5a8af366a5b0264c4de0c1ac53d4ffa1bdb8c116ec3daed"
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
