FROM node:24.4.1-alpine3.21
# Needs to expose the port for the app to run on:
EXPOSE 3000
# Needs to expose the port for the JSON server:
EXPOSE 3004
WORKDIR /app
COPY package-lock.json ./
COPY package.json ./
RUN npm ci
COPY ./ ./
CMD ["npm", "run", "start"]