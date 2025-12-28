#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGES_FILE="$SCRIPT_DIR/core-extra-packages.txt"
OUTPUT_FILE="$SCRIPT_DIR/archinstall_user_configuration.json"

echo "=== Generating archinstall JSON Configuration ==="

echo "Reading packages from $PACKAGES_FILE..."
PACKAGES=$(cat "$PACKAGES_FILE" | grep -v '^#' | grep -v '^$' | jq -R . | jq -s .)

echo "Generating $OUTPUT_FILE..."
cat >"$OUTPUT_FILE" <<EOF
{
  "archinstall-language": "English",
  "audio_config": {
    "audio": "pipewire"
  },
  "bootloader": "Systemd-boot",
  "kernels": ["linux"],
  "locale_config": {
    "kb_layout": "us",
    "sys_enc": "UTF-8",
    "sys_lang": "en_US"
  },
  "network_config": {
    "type": "nm"
  },
  "bluetooth": true,
  "ntp": true,
  "packages": $PACKAGES,
  "swap": true
}
EOF

echo "✓ Successfully generated $OUTPUT_FILE"
echo "Package count: $(echo "$PACKAGES" | jq 'length')"
