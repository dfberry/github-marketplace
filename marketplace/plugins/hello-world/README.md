# Hello World plugin

Minimal Copilot plugin example.

## Install

1. Copy this directory into your Copilot plugin workspace.
2. Register `plugin.yaml` with your Copilot plugin loader.
3. Run `scripts/install-and-run-eval.sh` to install a copy and verify the example.

## Use

- `agent-manager.yaml` for the greeting agent manager
- `skills/hello-world.md` for the greeting skill
- `mcp/server.yaml` for the demo MCP server
- `hooks/after-message.yaml` for the message hook
- `evals/hello-world.yaml` for the smoke eval

## Evals

Run the eval against an installed copy of the plugin:

```bash
./scripts/install-and-run-eval.sh
```

The script verifies the agent manager, skill, MCP server, hook, and eval manifest.
