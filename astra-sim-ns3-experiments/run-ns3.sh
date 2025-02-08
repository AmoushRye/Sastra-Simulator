#!/bin/bash
set -e

# Path
SCRIPT_DIR=$(dirname "$(realpath $0)")
ASTRA_SIM=${SCRIPT_DIR}/../extern/network_backend/ns-3/build/scratch/ns3.42-AstraSimNetwork-default

echo ${SCRIPT_DIR}
# Run ASTRA-sim
(
${ASTRA_SIM} \
    --workload-configuration=${SCRIPT_DIR}/alltoall/alltoall \
    --system-configuration=${SCRIPT_DIR}/inputs/Ring_sys.json \
    --network-configuration=${SCRIPT_DIR}/../../astra-sim/extern/network_backend/ns-3/scratch/config/config.txt \
    --remote-memory-configuration=${SCRIPT_DIR}/inputs/RemoteMemory.json \
    --logical-topology-configuration=${SCRIPT_DIR}/inputs/128nodes_1D.json   \
    --comm-group-configuration=\"empty\"
)