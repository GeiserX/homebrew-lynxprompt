# typed: false
# frozen_string_literal: true

class Lynxprompt < Formula
  desc "CLI for LynxPrompt - Generate AI IDE configuration files"
  homepage "https://lynxprompt.com"
  url "https://registry.npmjs.org/lynxprompt/-/lynxprompt-0.2.0.tgz"
  sha256 "4f75f4ed43c7de86c6433903c872e735b0c87488a72defad4936ef3bf9dd33ea"
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
