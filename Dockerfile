#FROM mcr.microsoft.com/dotnet/runtime:6.0
#FROM mcr.microsoft.com/dotnet/runtime-deps:6.0
FROM mcr.microsoft.com/dotnet/sdk:6.0
LABEL MAINTAINER="foblas1@gmail.com"

RUN apt-get update \
        && apt-get install -y --no-install-recommends default-jdk \
        && rm -rf /var/lib/apt/lists/*

RUN dotnet tool install --global dotnet-sonarscanner
RUN dotnet tool install --global JetBrains.dotCover.GlobalTool

ENV PATH="${PATH}:/root/.dotnet/tools"

CMD [ "bash" ]
