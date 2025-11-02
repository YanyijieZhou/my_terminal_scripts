#!/usr/bin/env bash
# Name: {{NAME}}
# Purpose: <brief description>
# Author: {{AUTHOR}}
# Created: {{DATE}}
# Usage: {{NAME}} [options]

set -euo pipefail

main() {
  echo "Hello — this is {{NAME}}"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  main "$@"
fi