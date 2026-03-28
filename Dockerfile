FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    ninja-build \
    linux-tools-common \
    linux-tools-generic \
    linux-tools-`uname -r` \
    cmake \
    sudo \
    ccache \
    libkrb5-3 \
    zlib1g-dev \
    liblttng-ust1t64 \
    libssl-dev \
    libicu-dev \
    gawk \
    bison \
    wget \
    flex \
    curl \
    jq \
    git \
    ca-certificates \
    python3 \
    python3-venv \
    software-properties-common

RUN wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | sudo tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc
RUN add-apt-repository -y "deb http://apt.llvm.org/$(lsb_release -cs)/ llvm-toolchain-$(lsb_release -cs) main" && \
    apt-get install -y \
    llvm-23 \
    clang-23 \
    llvm-23-dev \
    clang-format-23 \
    clangd-23
RUN find /usr/bin -name "*-23" -type l -exec sh -c 'cp -P "$1" "${1%-23}"' _ {} \;
# Common build dependencies
RUN apt-get install -y pkg-config autoconf automake libtool
RUN apt-get install -y gh

RUN useradd -u 1001 -m opt-bench
USER opt-bench
WORKDIR /home/opt-bench

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain nightly
RUN . "$HOME/.cargo/env" && rustup component add llvm-tools-preview
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN curl -LsSf https://hf.co/cli/install.sh | bash
