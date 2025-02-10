#!/bin/bash
set -e

# Path
SCRIPT_DIR=$(dirname "$(realpath $0)")

# Convert the ET files to JSON
(
mkdir -p "${SCRIPT_DIR}/json_chakra"

chakra_jsonizer \
    --input="${SCRIPT_DIR}/workload/MLP_ModelParallel.2.et" \
    --output="${SCRIPT_DIR}/json_chakra/MP0.json"
)
