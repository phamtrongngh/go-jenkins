# STEP 1: BUILD
FROM golang:1.18-alpine as build
WORKDIR /app
COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o gojenkins

# STEP 2: RUN
FROM scratch as run
WORKDIR /app
COPY --from=build /app/gojenkins gojenkins
EXPOSE 8888
CMD [ "/app/gojenkins" ]