<p align="center"><img src="docs/images/banner.svg" alt="homebrew-lynxprompt banner" width="900"/></p>

<h1 align="center">homebrew-lynxprompt</h1>

<p align="center"><strong>Homebrew tap for LynxPrompt CLI</strong></p>

---

This is the official Homebrew tap for [LynxPrompt](https://lynxprompt.com) CLI.

## Installation

```bash
brew tap GeiserX/lynxprompt
brew install lynxprompt
```

## Usage

```bash
# Interactive wizard to generate AI IDE configs
lynxprompt init

# Authenticate with LynxPrompt
lynxprompt login

# List your blueprints
lynxprompt list

# Search public blueprints
lynxprompt search "nextjs typescript"

# Pull a blueprint
lynxprompt pull bp_abc123
```

## Updates

```bash
brew update
brew upgrade lynxprompt
```

## More Info

- [LynxPrompt Website](https://lynxprompt.com)
- [CLI Documentation](https://lynxprompt.com/docs/cli)
- [GitHub Repository](https://github.com/GeiserX/LynxPrompt)

## Related Projects

| Project | Description |
|---------|-------------|
| [LynxPrompt](https://github.com/GeiserX/LynxPrompt) | Self-hosted platform for AI IDE/Tools Rules and Commands via WebUI and CLI |
| [lynxprompt-vscode](https://github.com/GeiserX/lynxprompt-vscode) | VS Code extension for LynxPrompt AI configuration file management |
| [lynxprompt-action](https://github.com/GeiserX/lynxprompt-action) | GitHub Action to sync and validate AI IDE configuration files with LynxPrompt |
| [lynxprompt-mcp](https://github.com/GeiserX/lynxprompt-mcp) | MCP Server for LynxPrompt AI configuration blueprint management |
| [n8n-nodes-lynxprompt](https://github.com/GeiserX/n8n-nodes-lynxprompt) | n8n community node for LynxPrompt AI configuration blueprints |
