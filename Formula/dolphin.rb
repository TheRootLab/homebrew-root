class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version ""

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download//dolphin-macos-x64.zip"
      sha256 "032b24d92ea7d757324e42637b76b22f0c7a3ec372775abfb63b219e6858f8e2"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/@{VERSION/dolphin-macos-arm64.zip"
      sha256 "68e0a00d286b3eef98a43a0657bce9ab0400d394787b85561bee91dd0d2cb032"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
