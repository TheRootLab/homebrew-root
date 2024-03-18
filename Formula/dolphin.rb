class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.2.2/dolphin-macos-x64.zip"
      sha256 "43b0ba7b2bb9f8db78e65800b8d87536254aa4b9fcd08fb92ce56c336d494cf2"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.2.2/dolphin-macos-arm64.zip"
      sha256 "caa18c4210b59187272786f50d7b3c637a75b1b36f0b059b20e03ef71aeff6d4"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
