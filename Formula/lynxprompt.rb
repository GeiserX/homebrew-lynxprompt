# typed: false
# frozen_string_literal: true

class Lynxprompt < Formula
  desc "CLI for LynxPrompt - Generate AI IDE configuration files"
  homepage "https://lynxprompt.geiser.cloud"
  url "https://registry.npmjs.org/lynxprompt/-/lynxprompt-3.2.1.tgz"
  sha256 "8d345f6d07fc37a8ef82151a5269b421d55c1580df3f3439ac1c56919be776f7"
  license "AGPL-3.0-or-later"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "LynxPrompt CLI", shell_output("#{bin}/lynxprompt --help")
  end
end
