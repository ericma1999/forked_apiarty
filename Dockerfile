FROM ubuntu:20.04

# settings
ENV DEBIAN_FRONTEND noninteractive
ENV LANG=C.UTF-8
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

RUN apt update \
    # Install runtime dependencies
    && apt install -y openjdk-8-jdk ant unzip wget curl cpanminus git graphviz gradle maven subversion python vim \
    # Install Python 3
    && apt install -y python3-pip python3-dev \
    && cd /usr/local/bin \
    && ln -s /usr/bin/python3 python3 \
    && pip3 install --upgrade pip

RUN mkdir -p /apiarty/tools

WORKDIR /apiarty
ENV PATH=/apiarty/apiarty.bin:${PATH}

RUN \
    rm /root/.bashrc \
    && ln -s /apiarty/apiarty.bin/bashrc /root/.bashrc

### TOOLS ###
# The following installation instructions can be also found in the GitHub repos of the tools themselves.

# Install Nopol and its dependencies
WORKDIR /CoCoSpoon
RUN git clone https://github.com/SpoonLabs/CoCoSpoon.git /CoCoSpoon

WORKDIR /nopol
RUN git clone https://github.com/ericma1999/forked_nopol.git /nopol

# Install Arja and its dependencies
WORKDIR /arja
RUN git clone https://github.com/yyxhdy/arja.git /arja \
    && mkdir bin \
    && javac -cp lib/*: -d bin $(find src -name '*.java') \
    && cd external \
    && rm -r bin \
    && mkdir bin \
    && javac -cp lib/*: -d bin $(find src -name '*.java')

# Install NPEFix and its dependencies
# WORKDIR /npefix
# RUN git clone https://github.com/Spirals-Team/npefix/ /npefix \
#     && mvn install

# Install Astor and its dependencies (1st installation option)
WORKDIR /astor
RUN git clone https://github.com/ericma1999/forked-astor.git /astor \
    && mvn package -DskipTests=true

RUN echo "test"
# Install Tbar
WORKDIR /tbar
RUN git clone https://github.com/ericma1999/forked_tbar.git /tbar \
    && cd /tbar \
    && mvn package -DskipTests dependency:copy-dependencies



# Install Avatar
WORKDIR /Avatar
RUN git clone https://github.com/ericma1999/forked_avatar.git /avatar \
    && cd /avatar \
    && mvn package -DskipTests dependency:copy-dependencies 

# Install TBar
# WORKDIR /tbar
# RUN git clone https://github.com/SerVal-DTF/TBar.git \
#     && cd /tbar/TBar \
#     && cd D4J \
#     && git clone https://github.com/rjust/defects4j.git \
#     && cd defects4j \
#     && cpanm --installdeps . \
#     && ./init.sh
  
# Install SimFix
# WORKDIR /simfix
# RUN git clone https://github.com/xgdsmileboy/SimFix.git \
#     && cd /simfix/SimFix/sbfl/ \
#     && mkdir projects \
#     && git clone https://github.com/rjust/defects4j.git \
#     && cd defects4j \
#     && cpanm --installdeps . \
#     && ./init.sh

WORKDIR /apiarty

RUN git config --global user.name "apiarty"
RUN git config --global user.email "apiarty@gmail.com"

COPY . .
CMD ["bash"]