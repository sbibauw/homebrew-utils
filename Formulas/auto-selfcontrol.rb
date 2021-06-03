class AutoSelfcontrol < Formula
  desc "Small utility to schedule start and stop times of SelfControl"
  homepage "https://github.com/andreasgrill/auto-selfcontrol"
  url "https://github.com/sbibauw/auto-selfcontrol/archive/v0.4.tar.gz"
  sha256 "4f00387e9cb19e02c7ae87c4b031c2e5eb0daf132fe105bb913fbc55d2ecbaeb"
  head "https://github.com/sbibauw/auto-selfcontrol.git"

  def install
    bin.install "auto-selfcontrol"
    bin.install "auto-selfcontrol.py"
    (etc/"auto-selfcontrol").install "config.json"
  end

  def caveats
    <<~EOS
      You need to have SelfControl installed. If it is not, run:
        brew cask install selfcontrol
    EOS
  end

  test do
    system "#{bin}/auto-selfcontrol", "help"
    system "#{bin}/auto-selfcontrol", "config"
    assert_predicate "#{etc}/auto-selfcontrol/config.json", :exist?
  end
end
