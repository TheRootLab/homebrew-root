class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version ""

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download//dolphin-macos-x64.zip"
      sha256 "7d925250fe1119136113a0abb92a48f4585cf71de60e44f542d20c15f8992f07"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/@{VERSION/dolphin-macos-arm64.zip"
      sha256 "3945e2e1029b8030025d67dac380a133c5d062942fac9e7b0cf66bd1dea8fcb0"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
