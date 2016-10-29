#!/usr/bin/env bash
#

set -euo pipefail

cd "${TMPDIR:-/tmp}"
git clone -b 2.0.x --depth 1 https://github.com/gslowikowski/scalac-scoverage-plugin.git
( cd scalac-scoverage-plugin && sbt ++2.10.6 publishLocal && sbt ++2.12.0-RC1-1e81a09 publishLocal)
rm -rf scalac-scoverage-plugin

