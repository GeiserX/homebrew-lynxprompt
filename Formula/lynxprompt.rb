# typed: false
# frozen_string_literal: true

class Lynxprompt < Formula
  desc "CLI for LynxPrompt - Generate AI IDE configuration files"
  homepage "https://lynxprompt.com"
  url "https://registry.npmjs.org/lynxprompt/-/lynxprompt-2.1.37.tgz"
  sha256 "5ebe2a7806f6dc7d01f75d425208d5a1a111083a5509308c0a3d9b9dc6e72dc5"
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
