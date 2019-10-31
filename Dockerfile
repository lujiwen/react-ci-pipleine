FROM node:latest

WORKDIR /usr/src/app

RUN yarn global add serve

COPY . /usr/src/app/

EXPOSE 5000

ENTRYPOINT ["serve", "-s", "build"]