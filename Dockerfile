FROM ubuntu:18.04

ARG version

RUN apt-get update && apt-get install --yes wget

RUN mkdir -p /tmp /build 
RUN wget -qO- https://github.com/vulpemventures/electrs/releases/download/v0.4.1-bin/electrs.tar.gz | tar -xvz -C /tmp && \
  mv /tmp/${version}/electrs /build && \
  rm -rf /tmp

EXPOSE 3002
STOPSIGNAL SIGINT

ENTRYPOINT ["/build/electrs"]
CMD ["-vvvv", "--daemon-dir", "/config", "--http-addr", "0.0.0.0:3002"]
