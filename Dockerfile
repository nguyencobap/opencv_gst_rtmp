# syntax=docker/dockerfile:1.3
FROM python:3.8-slim AS builder
WORKDIR /app
COPY . .
RUN python3 -m pip install --upgrade build wheel \
    && python setup.py bdist_wheel

FROM ubuntu:20.04
ENV TZ=Asia/Ho_Chi_Minh

WORKDIR /workspace

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

RUN apt update && apt install -y --no-install-recommends python3 python3-pip

COPY setup_env.sh /workspace/
RUN chmod +x setup_env.sh && ./setup_env.sh

COPY --from=builder /app/dist/*.whl .
RUN python3 -m pip install *.whl