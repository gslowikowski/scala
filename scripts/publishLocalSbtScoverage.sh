#!/usr/bin/env bash
#

set -euo pipefail

cd "${TMPDIR:-/tmp}"
git clone -b 2.0.x --depth 1 https://github.com/gslowikowski/sbt-scoverage.git
( cd sbt-scoverage && sbt publishLocal)
rm -rf sbt-scoverage
