class Aipm < Formula
  desc "AI-powered project manager for the terminal"
  homepage "https://github.com/ComputelessComputer/aipm"
  url "https://github.com/ComputelessComputer/aipm/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "fbff71048f2cc60da9ce3aee4b2422c9e43af4aa0668a607f4e64fca5e099832"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aipm --version")
  end
end
