FROM node:6
MAINTAINER DienPhan <tdien105@gmail.com>
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app
RUN npm i
RUN npm run build
EXPOSE 3000
CMD ["npm","start"]
