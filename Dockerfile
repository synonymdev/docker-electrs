FROM rust:latest AS builder

RUN apt-get update
RUN apt-get install -y clang cmake

RUN git clone https://github.com/blockstream/electrs

WORKDIR /electrs

RUN cargo build --release --bin electrs

FROM ubuntu:19.04

WORKDIR /build

COPY --from=builder /electrs/target/release/electrs /build

EXPOSE 3002
EXPOSE 60401

STOPSIGNAL SIGINT

ENTRYPOINT ["/build/electrs"]