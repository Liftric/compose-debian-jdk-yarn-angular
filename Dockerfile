FROM docker/compose:debian-1.25.5
RUN apt update && \
    apt -y install wget git gpg apt-transport-https software-properties-common jq locales locales-all && \
    wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - && \
    add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ && \
    apt update && \
    mkdir -p /usr/share/man/man1 && \
    apt -y install adoptopenjdk-11-hotspot
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
