class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version "0.1.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.1.15/dolphin-macos-x64.zip"
      sha256 "593e592031fecdb87ae10103090f8e5161cbf8fa78795ad4376dcfc2ab2d65e5"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.1.15/dolphin-macos-arm64.zip"
      sha256 "aa3a07db04adfe975dab2e812969efa26decc544b591b941780e05135461d2c1"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
