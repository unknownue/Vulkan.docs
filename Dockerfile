
FROM ubuntu:18.04

WORKDIR /root/

RUN apt update && apt -y full-upgrade
# Install build dependencies
RUN apt install -y tar git wget build-essential python3 cmake bison flex \
    libffi-dev libxml2-dev libgdk-pixbuf2.0-dev libcairo2-dev \
    libpango1.0-dev fonts-lyx ghostscript libreadline-dev && \
    # Install Ruby
    apt install -y ruby ruby-dev && \
    # Install nodejs
    apt install -y nodejs npm && npm install lunr@2.3.6 --global && \
    export NODE_PATH=/usr/local/lib/node_modules
# Install asciidoctor
RUN gem install --no-rdoc --no-ri asciidoctor -v 1.5.8 && \
    gem install --no-rdoc --no-ri json-schema -v 2.8.1 && \
    gem install --no-rdoc --no-ri coderay asciidoctor-mathematical asciidoctor-diagram && \
    gem install --no-rdoc --no-ri --pre asciidoctor-pdf && \
    # Install asciidoctor-chuncker for building spect in chunk
    wget https://github.com/roswell/roswell/releases/download/v20.01.14.104/roswell_20.01.14.104-1_amd64.deb && \
    dpkg -i roswell_20.01.14.104-1_amd64.deb && rm roswell_20.01.14.104-1_amd64.deb && \
    ros setup && \
    ros install alexandria lquery cl-fad && \
    git clone https://github.com/wshito/asciidoctor-chunker ~/common-lisp/asciidoctor-chunker/

RUN wget https://github.com/KhronosGroup/Vulkan-Docs/archive/v1.2.132.tar.gz && \
    tar zxvf v1.2.132.tar.gz && mv Vulkan-Docs-1.2.132 Vulkan-Docs

# RUN ./makeAllExts all

CMD [ "bash" ]

# apt install roswell
# apt install setenv
# export PATH=$PATH:/usr/local/lib/node_modules
# export NODE_PATH=/usr/local/lib/node_modules
# ls /usr/local/lib/node_modules
# apt-cache policy asciidoctor
# gem install asciidoctor:1.5.8
# gem install coderay
# gem install ros
# ./makeAllExts html
# ls out/h
# git clone https://github.com/wshito/asciidoctor-chunker ~/common-lisp/asciidoctor-chunker/
# gem install --no-rdoc --no-ri json-schema -v 2.8.1
