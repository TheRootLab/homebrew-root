class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version ""

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download//dolphin-macos-x64.zip"
      sha256 "a570d0dbf438669690734169cf88a2900e772308af635b0954bdf263b9d1af5e"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/@{VERSION/dolphin-macos-arm64.zip"
      sha256 "308c581fb354c9282c0591de2664e710d1be045883fa8fde83bbaea9efe91761"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
