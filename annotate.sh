#!/bin/bash

set -e

cat << EOF > annotation.html
<p>lorem ipsum etc</p>
EOF

cat annotation.html | buildkite-agent annotate --style "success" --context "${BUILDKITE_STEP_ID}"
