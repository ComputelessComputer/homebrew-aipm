class Aipm < Formula
  desc "AI-powered project manager for the terminal"
  homepage "https://github.com/ComputelessComputer/aipm"
  url "https://github.com/ComputelessComputer/aipm/archive/refs/tags/v0.8.2.tar.gz"
  sha256 "b42f9cd72e112b2dd5cd55d4267493a22233a04c5c0723c18086444c04fdbab4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aipm --version")
  end
end
