#!/bin/bash
set -e

# Path
SCRIPT_DIR=$(dirname "$(realpath $0)")

# Convert the ET files to JSON
(
mkdir -p "${SCRIPT_DIR}/json_chakra"

chakra_jsonizer \
    --input="${SCRIPT_DIR}/3nodes/3nodes.3.et" \
    --output="${SCRIPT_DIR}/json_chakra/3nodes.json"
)
