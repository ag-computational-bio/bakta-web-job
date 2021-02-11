#!/bin/bash

bash -euo pipefail 

mkdir /data
mkdir /output

eval "/bin/DataStager $DownloaderEnvConfig"
eval "/entrypoint.sh "$BaktaEnvConfig" -o /output --tmp-dir /cache -t 4"
tar -czvf results.tar.gz /output
eval "/bin/DataStager $UploaderEnvConfig"
