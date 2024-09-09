FROM pytorch/pytorch:2.3.1-cuda11.8-cudnn8-runtime

ARG http_proxy
ARG https_proxy
ARG HTTPS_PROXY
ARG HTTP_PROXY
ENV NO_PROXY localhost,127.0.0.1
WORKDIR /app/

RUN apt-get update && apt-get install -y wget libgl1-mesa-glx libglib2.0-0

RUN pip install magic_pdf[full] -U --extra-index-url https://wheels.myhloli.com
RUN pip install paddlepaddle-gpu==3.0.0b1 --index-url https://www.paddlepaddle.org.cn/packages/stable/cu118/
RUN pip install python-dotenv \
    minio \
    loguru \
    fastapi[all] \
    cachetools \
    gradio \
    numpy~=1.26 \
    opencv-python \
    ultralytics \
    unimernet==0.1.6 \
    matplotlib \
    struct-eqtable==0.1.0 \
    boto3>=1.28.43 \
    Brotli>=1.1.0 \
    click>=8.1.7 \
    PyMuPDF>=1.24.9 \
    fast-langdetect==0.2.0 \
    wordninja>=2.0.0 \
    scikit-learn>=1.0.2 \
    pdfminer.six==20231228 \
    detectron2 \
    jupyter
