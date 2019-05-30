class Pdfwordcount < Formula
  desc "Count words in a PDF (wrapper around pdftotext and wc)"
  homepage "https://github.com/sbibauw/pdfwordcount"
  url "https://github.com/sbibauw/pdfwordcount/archive/0.1.tar.gz"
  sha256 "1c7f1ccc7630b792d1a23a6067c3bf3776114e901d564d561fd077b9aaee7f2d"

  depends_on "recode"
  depends_on "xpdf"

  def install
    bin.install "pdfwordcount"
  end

  test do
    system "curl", "http://www.africau.edu/images/default/sample.pdf", "-o", "sample.pdf"
    assert_equal "#{bin}/pdfwordcount", "sample.pdf", 171
  end
end
