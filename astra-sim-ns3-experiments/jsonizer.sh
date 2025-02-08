#!/bin/bash
set -e

# Path
SCRIPT_DIR=$(dirname "$(realpath $0)")

# Convert the ET files to JSON
(
mkdir -p "${SCRIPT_DIR}/json_chakra"

chakra_jsonizer \
    --input="${SCRIPT_DIR}/alltoall/alltoall.0.et" \
    --output="${SCRIPT_DIR}/json_chakra/alltoall.json"
)
