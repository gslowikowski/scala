#!/usr/bin/env bash
#

set -euo pipefail

cd "${TMPDIR:-/tmp}"
git clone -b 2.0.x --depth 1 https://github.com/gslowikowski/scalac-scoverage-runtime-java.git
( cd scalac-scoverage-runtime-java && sbt publishLocal)
rm -rf scalac-scoverage-runtime-java

