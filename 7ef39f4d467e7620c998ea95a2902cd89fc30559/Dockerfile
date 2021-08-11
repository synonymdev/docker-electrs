FROM rust:latest AS builder

ARG COMMIT 7ef39f4d467e7620c998ea95a2902cd89fc30559

RUN apt-get update
RUN apt-get install -y clang cmake

RUN git clone https://github.com/romanz/electrs && cd electrs && git checkout ${COMMIT}

WORKDIR /electrs

RUN cargo build --release --bin electrs

FROM debian:stable-slim

WORKDIR /build

COPY --from=builder /electrs/target/release/electrs /build

EXPOSE 3002
EXPOSE 60401

STOPSIGNAL SIGINT

ENTRYPOINT ["/build/electrs"]
