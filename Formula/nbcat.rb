class Nbcat < Formula
  desc "A command-line tool that displays .ipynb file like `cat` command"
  version "0.2.7"
  on_macos do
    on_arm do
      url "https://github.com/moisutsu/nbcat/releases/download/v0.2.7/nbcat-aarch64-apple-darwin.tar.xz"
      sha256 "2bc1cd7e243adeb3d592ab25317833de25fb9d4f765b2e06690133cebc74152c"
    end
    on_intel do
      url "https://github.com/moisutsu/nbcat/releases/download/v0.2.7/nbcat-x86_64-apple-darwin.tar.xz"
      sha256 "77bb3e3365c091df8836c620d71f28938098796dee457478b648f7b2bb3bf770"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/moisutsu/nbcat/releases/download/v0.2.7/nbcat-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "7f0053775645bedf00b68bb2e8c486e97ea07fd6697d1632dc45d425064692d4"
    end
  end
  license "MIT"

  def install
    on_macos do
      on_arm do
        bin.install "nbcat"
      end
    end
    on_macos do
      on_intel do
        bin.install "nbcat"
      end
    end
    on_linux do
      on_intel do
        bin.install "nbcat"
      end
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
