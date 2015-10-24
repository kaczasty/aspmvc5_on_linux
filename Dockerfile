FROM microsoft/aspnet:1.0.0-beta8

ADD . /app
WORKDIR /app
RUN ["dnu", "restore"]
RUN ["dnu", "build"]

EXPOSE 5000

ENTRYPOINT ["dnx", "web"]
