class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.2.1/dolphin-macos-x64.zip"
      sha256 "4e051bd05925235094026bff200a71bbd8a4e597c7c38215f990359400e77908"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.2.1/dolphin-macos-arm64.zip"
      sha256 "b870b57b8e967b9f0afb9ae695f07dee823fd16d5594924cc071a041e0bf08de"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
