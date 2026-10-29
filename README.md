<p align="center"><img src="docs/images/banner.svg" alt="homebrew-lynxprompt" width="900"/></p>

<h1 align="center">homebrew-lynxprompt</h1>

<p align="center">
  <a href="https://www.npmjs.com/package/lynxprompt"><img src="https://img.shields.io/npm/v/lynxprompt?style=flat-square&logo=npm&label=CLI" alt="CLI version"></a>
  <a href="LICENSE"><img src="https://img.shields.io/github/license/GeiserX/homebrew-lynxprompt?style=flat-square" alt="License"></a>
</p>

Homebrew tap for the LynxPrompt CLI, which generates and syncs AI IDE configuration files (`AGENTS.md`, `CLAUDE.md`, `.cursor/rules/`) from a self-hostable platform.

## Quick start

```bash
brew install GeiserX/lynxprompt/lynxprompt
lynxprompt wizard
```

Use the full name. Homebrew 7 refuses `brew tap` followed by a bare `brew install lynxprompt` because the tap is not trusted yet; installing by full name trusts it, so `brew upgrade lynxprompt` works afterwards. Commands and options: [CLI reference](https://lynxprompt.geiser.cloud/docs/cli).

## Related projects

[LynxPrompt](https://github.com/GeiserX/LynxPrompt), [lynxprompt-vscode](https://github.com/GeiserX/lynxprompt-vscode), [lynxprompt-action](https://github.com/GeiserX/lynxprompt-action), [lynxprompt-mcp](https://github.com/GeiserX/lynxprompt-mcp).

## License

[GPL-3.0-or-later](LICENSE)
