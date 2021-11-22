FROM node:10.16.0-jessie
RUN apt-get update && apt-get install git -y && apt-get install imagemagick -y;

WORKDIR /app

COPY . .

RUN npm install
RUN chown -R node:node /my-sample-app

EXPOSE 8080

CMD ["npm", "start"]
