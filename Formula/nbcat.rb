class Nbcat < Formula
  desc "A command-line tool that displays .ipynb file like `cat` command"
  version "0.2.5"
  on_macos do
    on_arm do
      url "https://github.com/moisutsu/nbcat/releases/download/v0.2.5/nbcat-aarch64-apple-darwin.tar.xz"
      sha256 "83b077a295985116f2a317f5b7d14e43c5866ef92c201cdd8bcedaaf92a0fb1f"
    end
    on_intel do
      url "https://github.com/moisutsu/nbcat/releases/download/v0.2.5/nbcat-x86_64-apple-darwin.tar.xz"
      sha256 "8116f3c3fdd0324494db7ad1c10cd3f19ea4f7f8254e12d51bdeaa33774c9cb7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/moisutsu/nbcat/releases/download/v0.2.5/nbcat-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a207dbb6c1f206fdf4460664357f008d6765904674f362898a8ce849cb594535"
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
