FROM node:20 AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build \
  && npm prune --production

FROM node:20-bookworm-slim
WORKDIR /app
COPY --from=build /app/dist /app/dist
COPY --from=build /app/node_modules /app/node_modules
COPY --from=build /app/package*.json ./

ENV NODE_ENV=production

EXPOSE 3000

CMD ["node", "dist/index.js"]