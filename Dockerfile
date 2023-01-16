FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /source

COPY QuizApp.sln .
COPY QuizApp.Tests/*.csproj ./QuizApp.Tests/
COPY QuizApp.WebApi/*.csproj ./QuizApp.WebApi/
RUN dotnet restore

COPY QuizApp.Tests/. ./QuizApp.Tests/
COPY QuizApp.WebApi/. ./QuizApp.WebApi/
WORKDIR /source/QuizApp.WebApi
RUN dotnet publish -c release -o /app --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app ./
EXPOSE 80
ENTRYPOINT ["dotnet", "QuizApp.WebApi.dll"]
