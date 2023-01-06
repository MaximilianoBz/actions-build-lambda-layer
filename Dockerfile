FROM python:3.9

WORKDIR /app
RUN groupadd -r user && useradd -r -g user user
RUN chown user:user /app

USER user

COPY . /app

LABEL version="1.0.0"

LABEL com.github.actions.name="Build Lambda Layer"
LABEL com.github.actions.description="Build Lambda Layer"
LABEL com.github.actions.icon="upload-cloud"
LABEL com.github.actions.color="green"

LABEL repository="https://github.com/MaximilianoBz/actions-build-lambda-layer"
LABEL homepage="https://github.com/MaximilianoBz/actions-build-lambda-layer"
LABEL maintainer="Maximiliano Baez <maximilianombaez@gmail.com>"

#ARG DEBIAN_FRONTEND=noninteractive
#RUN apt-get update && apt-get install -y awscli


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


