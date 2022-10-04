FROM node:14.20.0-buster

LABEL version="1.2.4"
LABEL repository="https://github.com/Flow-Club/firebase-action"
LABEL homepage="https://github.com/Flow-Club/firebase-action"
LABEL maintainer="David Tran <david@flow.club>"


LABEL com.github.actions.name="GitHub Action for Firebase (node 14)"
LABEL com.github.actions.description="Wraps the firebase-tools CLI to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

RUN apt update && apt-get install -y jq openjdk-11-jre

RUN npm i -g npm@8.10.0
RUN npm i -g firebase-tools@11.13.0

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
