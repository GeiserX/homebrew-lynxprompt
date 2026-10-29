# typed: false
# frozen_string_literal: true

class Lynxprompt < Formula
  desc "CLI for LynxPrompt - Generate AI IDE configuration files"
  homepage "https://lynxprompt.geiser.cloud"
  url "https://registry.npmjs.org/lynxprompt/-/lynxprompt-3.3.0.tgz"
  sha256 "cbe5785c5594ab79cc2ebb5a88ddc6debfc3032d9d0dbe96a02db02fceceef09"
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
