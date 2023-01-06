FROM mcr.microsoft.com/dotnet/framework/aspnet:4.7.2
WORKDIR /bin
ENTRYPOINT ["dotnet", "Player.dll"]
# The final instruction copies the site you published earlier into the container.
# COPY . /inetpub/wwwroot