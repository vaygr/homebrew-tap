class FabricAi < Formula
  desc "Open-source framework for augmenting humans using AI"
  homepage "https://danielmiessler.com/p/fabric-origin-story"
  url "https://github.com/danielmiessler/fabric/archive/refs/tags/v1.4.161.tar.gz"
  sha256 "b5b53903b36ddecf26dbd63418ad60e15e16a99d546fe39ed874ca26885af37a"
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
