class Aipm < Formula
  desc "AI-powered project manager for the terminal"
  homepage "https://github.com/ComputelessComputer/aipm"
  url "https://github.com/ComputelessComputer/aipm/archive/refs/tags/v0.9.7.tar.gz"
  sha256 "088247749057a284d0f46fd81400ae33bd874884b544bc331b0ec6fe9d42094a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "apps/tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aipm --version")
  end
end
