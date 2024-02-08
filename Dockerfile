FROM node:20.11.0-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --omit=dev
COPY ./practicum_3/arithmetic-service/src ./src

CMD npm start

# to run the arithmetic-service container, use the following command:
# docker run -p 3000:3000 arithmetic-service
