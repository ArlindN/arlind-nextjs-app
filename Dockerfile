FROM node

WORKDIR /usr/arlind-nextjs-app/

COPY package*.json /usr/arlind-nextjs-app/

RUN npm install

COPY . /usr/arlind-nextjs-app/

RUN npm run build

COPY . /usr/arlind-nextjs-app/

EXPOSE 3000

CMD [ "npm", "run", "start" ]

