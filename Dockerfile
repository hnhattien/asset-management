ARG NODE_VERSION=20.17.0
ARG ALPINE_VERSION=3.20

FROM node:${NODE_VERSION}-alpine AS development
ENV NODE_ENV=development
RUN node -v

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN corepack enable

WORKDIR /app

COPY ./package.json ./
COPY ./pnpm-lock.yaml ./


RUN pnpm install
RUN pnpm -v
RUN pnpm install -g nodemon ts-node

COPY ./ ./

USER node

EXPOSE 9000

CMD ["pnpm", "start"]

