#!/bin/bash
set -eu

SCRIPT_DIR=$(cd $(dirname $0); pwd)
PROJECT_DIR=${SCRIPT_DIR}/../

find . -maxdepth 1 -type d \
       -not -path '*/\.*' \
       -exec bash -c "digdag check --project {}" \;
