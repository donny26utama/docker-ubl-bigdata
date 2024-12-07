FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cron \
        curl \
        git \
        nano \
        openjdk-21-jdk \
        python3 \
        python3-pip \
        ssh \
        wget \
        zip \
    && apt-get clean \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# Install PySpark
RUN pip3 install pyspark
