# typed: false
# frozen_string_literal: true

class Lynxprompt < Formula
  desc "CLI for LynxPrompt - Generate AI IDE configuration files"
  homepage "https://lynxprompt.com"
  url "https://registry.npmjs.org/lynxprompt/-/lynxprompt-0.4.3.tgz"
  sha256 "03f1857f8c9b77183506379c55ebcffd09babe3e839e32355683eaa771dfded2"
  license "SEE LICENSE IN LICENSE"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "LynxPrompt CLI", shell_output("#{bin}/lynxprompt --help")
  end
end
