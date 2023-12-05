FROM node:18.16.1-bullseye
RUN apt update
WORKDIR /app
COPY . .

RUN npm i
RUN cd client && npm i

RUN chmod +x ./start.sh
ENTRYPOINT ["/app/start.sh"]