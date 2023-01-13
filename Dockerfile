#FROM mcr.microsoft.com/dotnet/framework/aspnet:4.7.2
#WORKDIR /bin
#ENTRYPOINT ["dotnet", "Player.dll"]
# The final instruction copies the site you published earlier into the container.
# COPY . /inetpub/wwwroot

FROM mcr.microsoft.com/windows/servercore/iis

RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*

WORKDIR /inetpub/wwwroot

COPY ./inetpub/wwwroot