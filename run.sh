#!/bin/bash
set -eou pipefail

function cleanup {
    /bin/DataStager update
}
trap cleanup EXIT

mkdir /data
mkdir /output

/bin/DataStager $DownloaderEnvConfig
/entrypoint.sh $BaktaEnvConfig
/bin/DataStager $UploaderEnvConfig
/bin/DataStager update
echo "after possible failure"