FROM nikolaik/python-nodejs:latest

RUN npm install -g npm

WORKDIR /app
COPY package.json .
RUN npm install
RUN npm install -g npm
COPY . /
CMD ["npm", "start"]
