FROM python:3.11-slim

RUN apt-get update \
 && apt-get install -y --no-install-recommends build-essential \
 && pip install wheel checkov \
 && apt-get remove -y gcc \
 && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
 && rm -rf /var/lib/apt/lists/*
