FROM quay.io/mariusdieckmann/datastager:latest as stager

FROM oschwengers/bakta

COPY --from=stager /DataStager /bin
COPY run.sh /bin

ENTRYPOINT ["/bin/run.sh"]