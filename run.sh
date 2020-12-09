wget https://baktatest.s3.computational.bio.uni-giessen.de/data/demo-fasta.fasta
/entrypoint.sh "$BaktaEnvConfig"
/bin/DataStager "$StagerEnvConfig"
