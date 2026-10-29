# typed: false
# frozen_string_literal: true

class Lynxprompt < Formula
  desc "CLI for LynxPrompt - Generate AI IDE configuration files"
  homepage "https://lynxprompt.geiser.cloud"
  url "https://registry.npmjs.org/lynxprompt/-/lynxprompt-3.3.1.tgz"
  sha256 "d8d50e4a6aa049af6ce9ae704becd13bee0d656642930066f9f3322dbe3927eb"
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
