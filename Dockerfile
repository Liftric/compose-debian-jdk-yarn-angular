FROM docker/compose:debian-1.25.5
RUN apt update && \
    apt -y install wget gpg apt-transport-https software-properties-common && \
    wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add - && \
    add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/ && \
    apt update && \
    mkdir -p /usr/share/man/man1 && \
    apt -y install adoptopenjdk-11-hotspot
