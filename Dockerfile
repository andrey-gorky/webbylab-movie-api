FROM node:14

EXPOSE 8000

WORKDIR /src

RUN npm install i npm@latest -g

COPY package.json package-lock*.json ./

RUN npm i

COPY . .

CMD ["node", "app/index.js"]