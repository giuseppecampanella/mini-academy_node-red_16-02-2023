FROM nodered/node-red:2.2.3-12

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

WORKDIR /usr/src/node-red
COPY json-files/ext-countries.json ./json-files/
COPY json-files/ext-countries-v2.json ./json-files/
COPY json-files/concessions.json ./json-files/