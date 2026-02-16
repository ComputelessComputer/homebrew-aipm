class Aipm < Formula
  desc "AI-powered project manager for the terminal"
  homepage "https://github.com/ComputelessComputer/aipm"
  url "https://github.com/ComputelessComputer/aipm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a6767252639ad2911977e5d4fdb345261fe62e8223ebba39965f9a712d6e0862"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aipm --version")
  end
end
