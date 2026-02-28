class Aipm < Formula
  desc "AI-powered project manager for the terminal"
  homepage "https://github.com/ComputelessComputer/aipm"
  url "https://github.com/ComputelessComputer/aipm/archive/refs/tags/v0.9.5.tar.gz"
  sha256 "e29a89362d1cbdc26578d3d075abc5b55086fa6e1e6af6e551a5605db262707e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "apps/tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aipm --version")
  end
end
