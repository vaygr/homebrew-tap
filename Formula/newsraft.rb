class Newsraft < Formula
  desc "Terminal feed reader"
  homepage "https://codeberg.org/newsraft/newsraft"
  url "https://codeberg.org/newsraft/newsraft/archive/newsraft-0.30.tar.gz"
  sha256 "5ae782d7eb19042cd05e260c8ec0fe4d0544e51716885a4b1e96a673576bd998"
  license "ISC"

  depends_on "scdoc" => :build
  depends_on "gumbo-parser"
  depends_on "ncurses"

  uses_from_macos "curl"
  uses_from_macos "expat"
  uses_from_macos "sqlite"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/newsraft -v 2>&1")

    system "#{bin}/newsraft -l test 2>&1 || :"
    assert_match "Trying to initialize curses library...", File.read("test")
  end
end
