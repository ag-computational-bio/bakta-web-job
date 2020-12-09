FROM docker.pkg.github.com/mariusdieckmann/datastager/datastager:0.1.1-alpha as stager

FROM oschwengers/bakta

COPY --from=stager /DataStager/DataStager /bin
COPY run.sh /bin

ENTRYPOINT ["/bin/run.sh"]