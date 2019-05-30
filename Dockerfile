
# Build Stage

FROM node:10-alpine AS build

COPY . /src
WORKDIR /src

RUN npm ci

RUN npm run build

RUN npm prune --production

# Run Stage

FROM node:10-alpine

WORKDIR /usr/src/app

COPY --from=build /src/node_modules node_modules
COPY --from=build /src/dist dist

USER node

CMD ["node", "dist/main.js"]

