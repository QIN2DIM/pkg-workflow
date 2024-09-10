# FROM paddlepaddle/paddle:3.0.0b1-gpu-cuda11.8-cudnn8.9-trt8.5
# FROM tiangolo/uvicorn-gunicorn-fastapi:python3.10
FROM pytorch/pytorch:2.3.1-cuda11.8-cudnn8-runtime

ARG http_proxy
ARG https_proxy
ARG HTTPS_PROXY
ARG HTTP_PROXY
ENV NO_PROXY localhost,127.0.0.1

WORKDIR /app/

RUN apt-get update && apt-get install -y wget libgl1-mesa-glx libglib2.0-0

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
