FROM quay.io/mariusdieckmann/datastager:latest as stager

FROM quay.io/bakta/bakta

COPY --from=stager /DataStager /bin
COPY run.sh /bin

RUN chmod 555 /bin/run.sh

ENTRYPOINT ["/bin/run.sh"]