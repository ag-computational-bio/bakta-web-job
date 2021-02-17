#!/bin/bash
set -e

mkdir /data
mkdir /output

eval "/bin/DataStager $DownloaderEnvConfig"
eval "/entrypoint.sh "$BaktaEnvConfig" -o /output --tmp-dir /cache -t 4"
eval "/bin/DataStager $UploaderEnvConfig"
eval "/bin/DataStager update"
