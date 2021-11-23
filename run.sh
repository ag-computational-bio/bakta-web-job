#!/bin/bash
set -eou pipefail

DEBUG="true"

function cleanup {
    /bin/DataStager update
}
trap cleanup EXIT

mkdir /data
mkdir /output

sleep 10

/bin/DataStager update
/bin/DataStager $DownloaderEnvConfig
if [[ ! -z "${DEBUG}" ]]; then echo "Starting job with configuration \"${BaktaEnvConfig}\""; fi
/entrypoint.sh $BaktaEnvConfig
/bin/DataStager $UploaderEnvConfig
/bin/DataStager update
echo "job finished"
