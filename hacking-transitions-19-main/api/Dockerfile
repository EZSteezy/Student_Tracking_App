# Comment out line 8 when running local dev environment
# Un-comment out when running Heroku deploy
FROM node:16-alpine
WORKDIR /code
COPY package*.json .
RUN npm ci
COPY . .
# RUN npm run heroku-postbuild
EXPOSE 3000
CMD ["npm", "start"]
