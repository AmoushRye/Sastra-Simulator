#!/bin/bash
set -e

# Path
SCRIPT_DIR=$(dirname "$(realpath $0)")

# Run visualizer
(
mkdir -p "${SCRIPT_DIR}/visuals"

chakra_visualizer \
    --input_filename=${SCRIPT_DIR}/3nodes/3nodes.0.et \
    --output_filename=${SCRIPT_DIR}/visuals/node.pdf
)
