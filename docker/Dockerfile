# Use latest debian as the base image
FROM debian:latest

# Update the operating system and install
# python and node package managers for next
# layers' installations, add ethereum sources
# lists and ppa
RUN apt-get update && \
    echo "deb http://deb.debian.org/debian testing main" >> /etc/apt/sources.list && \
    echo "deb http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main" \
        > /etc/apt/sources.list.d/ethereum-bionic.list && \
    echo "deb-src http://ppa.launchpad.net/ethereum/ethereum/ubuntu bionic main" \
        >> /etc/apt/sources.list.d/ethereum-bionic.list && \
    apt-get install -y software-properties-common gnupg2 gpg-agent && \
    add-apt-repository -y ppa:ethereum/ethereum && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 2A518C819BE37D2C2031944D1C52189C923F6CA9 && \
    apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade && \
    apt-get install -y python3.8 python3-pip \
    nodejs npm git openssh-server openssh-client \
    build-essential

# Install ethereum packages
RUN apt-get install -y      \
        ethereum-unstable   \
        abigen-unstable     \
        bootnode-unstable   \
        evm-unstable        \
        geth-unstable       \
        wnode-unstable      \
        clef-unstable       \
        solc

# Create folder to store contract and
# tests code
RUN mkdir mauritius-pds
WORKDIR mauritius-pds

# Install development and testing dependencies
RUN npm init --yes && npm install --save-dev \
    --unsafe-perm=true --allow-root       \
    ganache-cli                           \
    truffle                               \
    @openzeppelin/test-environment        \
    @openzeppelin/test-helpers            \
    mocha                                 \
    chai                                  \
    eslint                                \
    eslint-config-standard                \
    eslint-plugin-import                  \
    eslint-plugin-mocha-no-only           \
    eslint-plugin-node                    \
    eslint-plugin-promise                 \
    eslint-plugin-standard                \
    ethereumjs-util                       \
    ganache-core                          \
    solhint                               \
    solidity-coverage                     \
    jsdoc                                 \
    ethereumjs-util

# Install sphinx and solidity/javascript language
# domain plugin for automatic document generation
RUN pip install sphinx sphinxcontrib-soliditydomain sphinx-js sphinx-rtd-theme slither-analyzer

# Copy over directories
COPY contracts /mauritius-pds/contracts
COPY docs /mauritius-pds/docs
COPY migrations /mauritius-pds/migrations
COPY scripts /mauritius-pds/scripts
COPY test /mauritius-pds/test
COPY [                      \
    ".eslintrc",            \
    ".mocharc.js",          \
    "package.json",         \
    ".solcover.js",         \
    ".solhint.json",        \
    "truffle-config.js",    \
    "test-environment.config.js", \
    "/mauritius-pds/"          \
]