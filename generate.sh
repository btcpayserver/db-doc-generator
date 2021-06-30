#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

mkdir -p output

docker run -v "$PWD/output:/output" -v "$PWD/schemaspy.properties:/schemaspy.properties" -v "$PWD/drivers:/drivers" --network="host" schemaspy/schemaspy:snapshot
