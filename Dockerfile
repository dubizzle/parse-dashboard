FROM node:4.4.2
EXPOSE 4040
WORKDIR /src
ADD . /src
RUN cd /src \
 && npm install \
 && npm run build \
 && npm cache clear \
 && rm -rf ~/.npm \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir Parse-Dashboard/icons

# Remember to run npm run dev on the container after deploying

ENTRYPOINT ["/src/bin/parse-dashboard", "--config", "/src/Parse-Dashboard/parse-dashboard-config.json"]
