#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
install_dir="${1:-/tmp/hello-world-plugin}"

rm -rf "$install_dir"
mkdir -p "$install_dir"
cp -R "$root_dir"/. "$install_dir"/

check_file() {
  local file="$1"
  local expected="$2"
  grep -Fq "$expected" "$file" || {
    echo "missing expected content in $file: $expected" >&2
    exit 1
  }
}

check_file "$install_dir/plugin.yaml" "agent_managers:"
check_file "$install_dir/plugin.yaml" "skills:"
check_file "$install_dir/plugin.yaml" "mcp_servers:"
check_file "$install_dir/plugin.yaml" "hooks:"
check_file "$install_dir/plugin.yaml" "evals:"
check_file "$install_dir/plugin.yaml" "agent-manager.yaml"
check_file "$install_dir/plugin.yaml" "skills/hello-world.md"
check_file "$install_dir/plugin.yaml" "mcp/server.yaml"
check_file "$install_dir/plugin.yaml" "hooks/after-message.yaml"
check_file "$install_dir/plugin.yaml" "evals/hello-world.yaml"
check_file "$install_dir/agent-manager.yaml" "hello-world agent manager"
check_file "$install_dir/skills/hello-world.md" "Hello World Skill"
check_file "$install_dir/mcp/server.yaml" "hello-world mcp server"
check_file "$install_dir/hooks/after-message.yaml" "Hello from the hello-world plugin."
check_file "$install_dir/evals/hello-world.yaml" "expected_contains: Hello from the hello-world plugin"

echo "hello-world eval installed and verified at $install_dir"
