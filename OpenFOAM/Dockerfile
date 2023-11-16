FROM ubuntu:lunar
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y wget \
                       gnupg \
                       software-properties-common ; \
    rm -rf /var/lib/apt/lists/*
RUN sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -" ; \
    add-apt-repository http://dl.openfoam.org/ubuntu ; \
    apt-get update && \
    apt-get install -y openfoam8 && \
    rm -rf /var/lib/apt/lists/*
ENV WM_PROJECT_DIR=/opt/openfoam8
ENV PATH=${WM_PROJECT_DIR}/bin:"${PATH}"
