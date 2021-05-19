#!/bin/bash
set -eou pipefail

mkdir /data
mkdir /output

/bin/DataStager $DownloaderEnvConfig
/entrypoint.sh $BaktaEnvConfig
/bin/DataStager $UploaderEnvConfig