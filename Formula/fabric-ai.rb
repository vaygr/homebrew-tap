class FabricAi < Formula
  desc "Open-source framework for augmenting humans using AI"
  homepage "https://danielmiessler.com/p/fabric-origin-story"
  url "https://github.com/danielmiessler/fabric/archive/refs/tags/v1.4.163.tar.gz"
  sha256 "afd64502c79a88b292428d0a8756b1f914b9d5472612382c95183ada0f799feb"
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
