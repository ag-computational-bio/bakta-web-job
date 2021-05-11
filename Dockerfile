FROM harbor.computational.bio.uni-giessen.de/bakta/datastager as stager


FROM oschwengers/bakta:v1.0

COPY --from=stager /DataStager /bin
COPY run.sh /bin

RUN chmod 555 /bin/run.sh

ENTRYPOINT ["/bin/run.sh"]