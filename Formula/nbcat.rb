class Nbcat < Formula
  desc "A command-line tool that displays .ipynb file like `cat` command"
  version "0.2.6"
  on_macos do
    on_arm do
      url "https://github.com/moisutsu/nbcat/releases/download/v0.2.6/nbcat-aarch64-apple-darwin.tar.xz"
      sha256 "b83461dae210a704b26cad963de75411fbec75f78a4b863c3b7df39517328c1b"
    end
    on_intel do
      url "https://github.com/moisutsu/nbcat/releases/download/v0.2.6/nbcat-x86_64-apple-darwin.tar.xz"
      sha256 "ccc4ccfc9cc4f21e5ddd52649f94c3b3d32a91210ca966bdc53cfc981ed2dfb7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/moisutsu/nbcat/releases/download/v0.2.6/nbcat-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "b89c7635435fe0eefb11c4704a4735eb2d52f61352383127b763194e1f207446"
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
