﻿FROM microsoft/aspnet

# The final instruction copies the site you published earlier into the container.
COPY . /inetpub/wwwroot