class Imediff < Formula
  include Language::Python::Virtualenv

  desc "2/3 file merge tool (ncurses)"
  homepage "https://github.com/osamuaoki/imediff"
  url "https://files.pythonhosted.org/packages/88/c6/375cd7c09636ac8e2949a84061a56769de5d623a6976e8ebca5190b98dc8/imediff-3.4.0.tar.gz"
  sha256 "543aff2bd192d1d8dadc86631ae5056048d7099e032a85f1736a0c9ceea4fcc5"
  license "GPL-2.0-or-later"
  head "https://github.com/osamuaoki/imediff.git", branch: "main"

  depends_on "python@3.13"

  def install
    inreplace "src/imediff/data/git-ime.in" do |s|
      s.gsub! "@@version@@", version.to_s
      s.gsub! "/usr/bin/imediff", "#{prefix}/bin/imediff"
    end

    virtualenv_install_with_resources

    bin.install "src/imediff/data/git-ime.in" => "git-ime"
    man1.install buildpath.glob("src/imediff/data/*.1")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imediff -v")
  end
end
