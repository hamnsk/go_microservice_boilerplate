FROM golang:1.24.5-alpine3.22 AS certs

FROM scratch
ARG SERVICE_NAME
COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
WORKDIR /app
COPY $SERVICE_NAME /app/$SERVICE_NAME

CMD ["/app/$SERVICE_NAME"]