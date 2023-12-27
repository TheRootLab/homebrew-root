class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version "0.1.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download/cli-0.1.16/dolphin-macos-x64.zip"
      sha256 "c54684519dcdffe84ad88855bf2eef1b323b8061da5ccc71ac183e15c53d5220"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/cli-0.1.16/dolphin-macos-arm64.zip"
      sha256 "e372487a4996930209fae558bc60739bbaa644349ecb95acce7373ebba107757"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
