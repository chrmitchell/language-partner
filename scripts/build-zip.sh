#!/bin/sh
# Builds dist/language-partner-<version>.zip for claude.ai's Customize > Plugins > Add > Upload plugin.
set -eu
cd "$(dirname "$0")/.."
version=$(python3 -c 'import json; print(json.load(open("plugins/language-partner/.claude-plugin/plugin.json"))["version"])')
mkdir -p dist
out="dist/language-partner-$version.zip"
rm -f "$out"
# Zip from the parent so the plugin folder is the archive's single top-level entry.
(cd plugins && zip -rq "../$out" language-partner -x '*.DS_Store')
unzip -l "$out"
echo "Built $out"
