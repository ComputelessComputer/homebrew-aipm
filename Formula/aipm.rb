class Aipm < Formula
  desc "AI-powered project manager for the terminal"
  homepage "https://github.com/ComputelessComputer/aipm"
  url "https://github.com/ComputelessComputer/aipm/archive/refs/tags/v0.9.6.tar.gz"
  sha256 "55c0f67646821e8099973f3e4b55867df054387d3e59a25d26b0d12251fad1b4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "apps/tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aipm --version")
  end
end
