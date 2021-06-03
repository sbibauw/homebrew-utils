class Pdfwordcount < Formula
  desc "Count words in a PDF (wrapper around pdftotext and wc)"
  homepage "https://github.com/sbibauw/pdfwordcount"
  url "https://github.com/sbibauw/pdfwordcount/archive/0.2.tar.gz"
  sha256 "3ee1b362080cad04a3a6f898cd881dbd6e12347defb56f6d0d075f453039eb97"

  depends_on "xpdf"

  def install
    bin.install "pdfwordcount"
  end

  test do
    system "curl", "http://www.africau.edu/images/default/sample.pdf", "-o", "sample.pdf"
    assert_equal "#{bin}/pdfwordcount", "sample.pdf", 171
  end
end
