FROM mcr.microsoft.com/dotnet/core/sdk:2.2-bionic

RUN apt-get update \
    && apt-get install curl gpg --assume-yes \
    && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg \
    && sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-bionic-prod bionic main" > /etc/apt/sources.list.d/dotnetdev.list' \
    && apt-get update \
    && apt-get install azure-functions-core-tools --assume-yes \
    && apt-get autoremove --assume-yes

WORKDIR /usr/src
