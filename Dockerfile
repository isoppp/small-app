# https://github.com/remix-run/indie-stack/blob/main/Dockerfile
# base node image
FROM node:20-alpine as base


FROM base AS runner

ENV NODE_ENV production

WORKDIR /app

COPY . .


RUN npm i
CMD ["npm", "start"]
