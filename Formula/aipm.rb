class Aipm < Formula
  desc "AI-powered project manager for the terminal"
  homepage "https://github.com/ComputelessComputer/aipm"
  url "https://github.com/ComputelessComputer/aipm/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "82f3cf70e234d6ec68822967d91d535abc4c91aa2d9eb6796197b565ccd26d2f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aipm --version")
  end
end
