FROM rust:1.62 as builder
WORKDIR /usr/src/rusty
COPY . .
RUN cargo install --path .

FROM debian:buster-slim
RUN apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/rusty /usr/local/bin/rusty
CMD ["myapp"]