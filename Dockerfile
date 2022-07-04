# syntax=docker/dockerfile:1
FROM python

LABEL version="0.0.1"
LABEL maintainer="github.com/flokiKun"

# Install req
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /code/app


CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]