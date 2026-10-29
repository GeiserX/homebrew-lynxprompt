# typed: false
# frozen_string_literal: true

class Lynxprompt < Formula
  desc "CLI for LynxPrompt - Generate AI IDE configuration files"
  homepage "https://lynxprompt.geiser.cloud"
  url "https://registry.npmjs.org/lynxprompt/-/lynxprompt-3.2.0.tgz"
  sha256 "7601b6686ff5fffda2b84b1dcc5b2cbdd24044d14dd4333dfa225f6e9b3b73d7"
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
