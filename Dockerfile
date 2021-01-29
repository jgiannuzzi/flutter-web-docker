FROM ubuntu:20.04

RUN apt-get update && apt-get install -yq curl file git unzip xz-utils zip && rm -rf /var/lib/apt/lists/*

RUN useradd -m flutter
RUN mkdir /opt/flutter && chown flutter:flutter /opt/flutter
USER flutter
WORKDIR /home/flutter

ARG VERSION

RUN git clone -b ${VERSION} https://github.com/flutter/flutter.git /opt/flutter
ENV PATH $PATH:/opt/flutter/bin
RUN flutter config --no-analytics --enable-web --no-enable-android --no-enable-ios
RUN flutter precache --web
RUN flutter create --platforms web dummy && rm -rf dummy
