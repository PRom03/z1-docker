FROM node:18-alpine AS builder
LABEL org.opencontainers.image.authors="Przemysław Romaniak"
WORKDIR /app
COPY backend .
RUN npm install express

FROM node:18-alpine AS runner
LABEL org.opencontainers.image.authors="Przemysław Romaniak"
RUN apk add --no-cache curl

WORKDIR /app
COPY --from=builder /app /app

ENV PORT=3000
EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -s http://localhost:3000/ || exit 1

CMD ["node", "app.js"]
