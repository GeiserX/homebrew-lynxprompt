# typed: false
# frozen_string_literal: true

class Lynxprompt < Formula
  desc "CLI for LynxPrompt - Generate AI IDE configuration files"
  homepage "https://lynxprompt.com"
  url "https://registry.npmjs.org/lynxprompt/-/lynxprompt-2.1.9.tgz"
  sha256 "2fffa20983d8a20eac9e0da7a0bba17e9502aa386aca783dd07dc7d75257e939"
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
