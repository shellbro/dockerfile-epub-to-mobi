FROM shellbro/centos:8.1.1911-1586073474

RUN mkdir /opt/kindlegen &&\
    curl http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz\
      | tar -xzf - -C /opt/kindlegen &&\
    /opt/kindlegen//kindlegen | head -3 | tail -1 >&2 &&\
    groupadd -g 1001 non-root && useradd -u 1001 -g 1001 non-root

COPY convert-all /usr/local/bin/convert-all

USER non-root

ENTRYPOINT ["/usr/local/bin/convert-all"]
