class Dolphin < Formula
  desc ""
  homepage "https://dolphin.userconnect.us"
  version "0.1.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/therootlab/dolphin-hq/releases/download/0.1.14/dolphin-macos-x64.zip"
      sha256 "a6f8151f62ee663482aa66da19986638219ca0d91d63a760284b76149ebb8f2b"

      def install
        bin.install "dolphin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/therootlab/dolphin-hq/releases/download/@{VERSION/dolphin-macos-arm64.zip"
      sha256 "853a088423a4c855630f13bf57fb54d8ce5c649c0842454397185c28177dcd6f"

      def install
        bin.install "dolphin"
      end
    end
  end

  test do
    system "#{bin}/dolphin --version"
  end
end
