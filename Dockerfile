# Pull base image
FROM python:3.10.4-slim-bullseye
# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /code
# Install dependencies
COPY ./requirements.txt .
RUN apt-get update && apt-get install -y git
RUN pip install -r requirements.txt
RUN pip install git+https://github.com/LIAAD/yake
# Copy project
COPY . .