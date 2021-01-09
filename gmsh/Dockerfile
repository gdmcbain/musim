FROM ubuntu:focal
COPY gmsh-4.7.1-Linux64 /opt
RUN ln -s /opt/bin/gmsh /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y libglu1-mesa \
                       libxcursor1 \
                       libxft2 \
                       libxinerama1 ; \
    rm -rf /var/lib/apt/lists/*

    

