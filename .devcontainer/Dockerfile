FROM mcr.microsoft.com/devcontainers/base:bookworm

RUN apt-get update && apt-get install -y \
    libgmp-dev \
    tig

USER vscode

WORKDIR /home/vscode/haskell
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
ENV PATH="/home/vscode/.ghcup/bin:${PATH}"
