FROM circleci/node:latest-browsers

WORKDIR /usr/src/app/
USER root
COPY package.json ./
RUN npm install -g @vue/cli
RUN npm install

COPY ./ ./

RUN npm run build

CMD ["npm", "run", "start"]