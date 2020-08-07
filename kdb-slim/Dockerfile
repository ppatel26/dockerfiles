# Get base image
FROM ubuntu:bionic

LABEL maintainer="Parv Patel <parvpatel@live.com>" \
      discription="kdbq+ over ubuntu:bionic 18.04 (LTS) + q-mode enabled emacs"

COPY emacs /root/

ENV PATH=${PATH}:/root/q/l32/

# expose port 5000 for kdb process
EXPOSE 5000

# > uname -a
# For 32 bit Ex: "Linux discworld 2.6.38-8-generic #42-Ubuntu SMP Mon Apr 11 03:31:50 UTC 2011 i686 i686 i386 GNU/Linux"  
# For 64 bit Ex: "Linux discworld 2.6.38-8-generic #42-Ubuntu SMP Mon Apr 11 03:31:50 UTC 2011 x86_64 x86_64 x86_64 GNU/Linux"
#
# Because we are install non-commercial kdb 32 bit version, we need access to 32-bit linux libraries 
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y build-essential && \
    apt-get install -y curl rlwrap emacs screen wget gzip unzip && \
    apt-get install -y libssl1.0.0:i386 && \
    cd /usr/lib/i386-linux-gnu/ && \
    ln -s libssl.so.1.0.0 libssl.so && \
    cd /root/ && \
    wget https://kx.com/347_d0szre-fr8917_llrsT4Yle-5839sdX/3.6/linuxx86.zip && \
    unzip linuxx86.zip && \
    rm linuxx86.zip && \
    wget https://raw.githubusercontent.com/psaris/q-mode/master/q-mode.el && \
    mv emacs .emacs



 
