#!/bin/bash
set -eou pipefail

mkdir /data
mkdir /output

/bin/DataStager $DownloaderEnvConfig
sleep 3600
/entrypoint.sh $BaktaEnvConfig
/bin/DataStager $UploaderEnvConfig