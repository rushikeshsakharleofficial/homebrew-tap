class CodeOutlineGraphGo < Formula
  desc "Go code indexing and search MCP server — tree-sitter symbols over SQLite FTS5"
  homepage "https://github.com/rushikeshsakharleofficial/gocode-outline-graph"
  license "MIT"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/rushikeshsakharleofficial/gocode-outline-graph/releases/download/v1.1.0/code-outline-graph-go_1.1.0_darwin_arm64.tar.gz"
      sha256 "15b083fe8f67abf7279f9ba60245d643a0570853087df1ac57235f8ded828c3a"
    end
    on_intel do
      url "https://github.com/rushikeshsakharleofficial/gocode-outline-graph/releases/download/v1.1.0/code-outline-graph-go_1.1.0_darwin_amd64.tar.gz"
      sha256 "282c814d50141b95fae022446271689f46de3d080e564149a62007225b53f5d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rushikeshsakharleofficial/gocode-outline-graph/releases/download/v1.1.0/code-outline-graph-go_1.1.0_linux_arm64.tar.gz"
      sha256 "c1622263732a4a291160332b236381a2cda5efdc213414ffdd7f53ac3507d719"
    end
    on_intel do
      url "https://github.com/rushikeshsakharleofficial/gocode-outline-graph/releases/download/v1.1.0/code-outline-graph-go_1.1.0_linux_amd64.tar.gz"
      sha256 "ebc23a371dd03c279ebd137f3386f42e82dc562d145a30228b61ed0e080027ac"
    end
  end

  def install
    bin.install "code-outline-graph-go"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/code-outline-graph-go version")
  end
end
