class AutoSelfcontrol < Formula
  desc "Small utility to schedule start and stop times of SelfControl"
  homepage "https://github.com/andreasgrill/auto-selfcontrol"
  head "https://github.com/sbibauw/auto-selfcontrol.git"

  def install
    bin.install "auto-selfcontrol"
    bin.install "auto-selfcontrol.py"
    (etc/"auto-selfcontrol").install "config.json"
    bin.install_symlink "auto-selfcontrol"
    bin.install_symlink "auto-selfcontrol.py"
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
