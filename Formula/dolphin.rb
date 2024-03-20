class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.2.3/dolphin-macos-x64.zip"
      sha256 "2674df361f0e8d4bf06e279c50ac5794872a0fcba5a3994594b695dcd7c186d7"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.2.3/dolphin-macos-arm64.zip"
      sha256 "41c917506c98f7cb28973b3153c0b90fd8372f774fce3c6461541fe5e1ef7f4b"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
