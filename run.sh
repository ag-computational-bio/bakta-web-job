#!/bin/bash
set -e

mkdir /data
mkdir /output

eval "/bin/DataStager $DownloaderEnvConfig"
eval "/entrypoint.sh "$BaktaEnvConfig""
eval "/bin/DataStager $UploaderEnvConfig"
eval "/bin/DataStager update"
