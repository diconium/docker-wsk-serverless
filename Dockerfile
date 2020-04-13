FROM node:10.15.0
LABEL maintainer="Carlos Duque <carlos.duque@diconium.com>, Francisco Madeira <francisco.madeira@diconium.com>, Rui Silva <rui.silva@diconium.com>"

RUN npm install -g serverless --silent && \
    npm install -g lerna

RUN set -ex \
    && curl -sSL https://github.com/apache/incubator-openwhisk-cli/releases/download/latest/OpenWhisk_CLI-latest-linux-386.tgz | tar xz \
    && mv wsk /usr/local/bin/ \
    && chmod +x /usr/local/bin/wsk 

CMD ["serverless && wsk"]