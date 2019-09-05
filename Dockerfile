FROM circleci/node:latest-browsers

WORKDIR /usr/src/app/
USER root
COPY package.json ./
RUN npm install cnpm -g -registry=https://registry.npm.taobao.org
RUN cnpm install -g @vue/cli
RUN cnpm install

COPY ./ ./

RUN cnpm run build

CMD ["cnpm", "run", "start"]