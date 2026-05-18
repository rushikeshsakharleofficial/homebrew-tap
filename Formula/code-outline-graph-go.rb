class CodeOutlineGraphGo < Formula
  desc "Go code indexing and search MCP server — tree-sitter symbols over SQLite FTS5"
  homepage "https://github.com/rushikeshsakharleofficial/gocode-outline-graph"
  license "MIT"
  version "1.1.1"

  on_macos do
    on_arm do
      url "https://github.com/rushikeshsakharleofficial/gocode-outline-graph/releases/download/v1.1.1/code-outline-graph-go_1.1.1_darwin_arm64.tar.gz"
      sha256 "ec72aac7145df0d0c791510e8cb0114f9ff7378f322a9c76c855e7881c2453c6"
    end
    on_intel do
      url "https://github.com/rushikeshsakharleofficial/gocode-outline-graph/releases/download/v1.1.1/code-outline-graph-go_1.1.1_darwin_amd64.tar.gz"
      sha256 "eaedfe453762f747e4d040dfe27cec9cf0ed911b445265e69464acc4a6fe5e39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rushikeshsakharleofficial/gocode-outline-graph/releases/download/v1.1.1/code-outline-graph-go_1.1.1_linux_arm64.tar.gz"
      sha256 "d26113306e4c8fbe15bc7f528273322585261243d7557dec87882a8b7af3a48f"
    end
    on_intel do
      url "https://github.com/rushikeshsakharleofficial/gocode-outline-graph/releases/download/v1.1.1/code-outline-graph-go_1.1.1_linux_amd64.tar.gz"
      sha256 "d874807722a2f5d2d358e6ec3a1bcb1a1caa24bcaf6c9d70def0c6fbe80fcb69"
    end
  end

  def install
    bin.install "code-outline-graph-go"
  end

  test do
    assert_match "1.1.1", shell_output("#{bin}/code-outline-graph-go version")
  end
end
