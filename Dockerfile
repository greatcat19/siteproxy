FROM node:slim

WORKDIR /app

ADD package.json /app/
ADD package-lock.json /app/

RUN npm install

ADD . /app/

CMD ["npm", "run", "localstart:docker"]
