class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.2.0/dolphin-macos-x64.zip"
      sha256 "2af6c07696b2b0085960b7b50e2688b37e23dfeedbc987ce4f9e2df949920c04"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.2.0/dolphin-macos-arm64.zip"
      sha256 "439df9adccb18fb68615ab7c1ad95f95c76bf9f7ac244a4c445b26d1561825b2"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
