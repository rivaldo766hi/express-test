FROM public.ecr.aws/docker/library/node:18.16.0-slim
WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
