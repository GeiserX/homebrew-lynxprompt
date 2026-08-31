# typed: false
# frozen_string_literal: true

class Lynxprompt < Formula
  desc "CLI for LynxPrompt - Generate AI IDE configuration files"
  homepage "https://lynxprompt.com"
  url "https://registry.npmjs.org/lynxprompt/-/lynxprompt-2.1.20.tgz"
  sha256 "07e0fe242a778591bc79005a7ffb2df89e3b3976725d68682c025d9c1a8976dc"
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
