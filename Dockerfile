FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

ARG VERSION=dockerbuild
ENV VERSION ${VERSION}
ENV PYTHONUNBUFFERED 1

# add python deps here
RUN pip install coloredlogs==15.0.1


WORKDIR /app
COPY src/main.py /app
COPY src/utils/ /app/utils/

# custom code
COPY src/mylib/ /app/mylib/
