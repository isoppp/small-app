# https://github.com/remix-run/indie-stack/blob/main/Dockerfile
# base node image
FROM node:20-alpine as base

FROM base AS runner

ENV NODE_ENV production

WORKDIR /app

COPY . .

# HEALTHCHECK  --interval=5s --timeout=3s \
#   CMD wget --no-verbose --tries=5 --spider http://localhost:3000/ || exit 1

RUN npm i
CMD ["npm", "start"]
