
FROM node:20-alpine

WORKDIR /app

RUN npm install -g pnpm

COPY package.json pnpm-lock.yaml ./

RUN pnpm install --frozen-lockfile

COPY . .

RUN pnpm prisma generate

RUN pnpm run build

RUN mkdir -p /app/prisma/db

EXPOSE 3333

CMD ["pnpm", "run", "start:prod"] 