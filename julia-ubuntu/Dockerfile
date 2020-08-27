# Get base image
FROM ubuntu:bionic

LABEL maintainer="Parv Patel <parvpatel@live.com>" \
      discription="julia over ubuntu:bionic 18.04 (LTS)"

COPY setup.jl Manifest.toml Project.toml /root/temp/
ENV PATH=/julia-1.5.1/bin:${PATH}

# Install Required Build Tools (https://github.com/JuliaLang/julia/blob/master/doc/build/build.md#required-build-tools-and-external-libraries)

# RUN apt-get update && \
#     apt-get install --yes --no-install-recommends \
#                     build-essential ca-certificates \
#                     cmake curl libatomic1 perl pkg-config gfortran git m4 python rlwrap wget gzip unzip screen emacs && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/* && \
#     git clone git://github.com/JuliaLang/julia.git && \
#     cd julia && \
#     git checkout v1.5.0 && \
#     make all -j$(nproc) \
#             MARCH=x86-64 \
#             JULIA_CPU_TARGET=x86-64 && \
#     rm -rf deps/scratch deps/srccache usr-staging &&\
#     julia /root/setup.jl &&\
#     rm /root/setup.jl


RUN apt-get update && \
apt-get install --yes --no-install-recommends \
                build-essential ca-certificates \
                cmake curl libatomic1 perl pkg-config gfortran git m4 python rlwrap wget gzip unzip screen emacs && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* && \
wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.1-linux-x86_64.tar.gz &&\
tar zxvf julia-1.5.1-linux-x86_64.tar.gz && \
rm julia-1.5.1-linux-x86_64.tar.gz && \
mkdir -p /root/.julia/environments/v1.5/ && \
cp /root/temp/*.toml /root/.julia/environments/v1.5/ && \
julia /root/temp/setup.jl && \
rm -rf /root/temp/ 