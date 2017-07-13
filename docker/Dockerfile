FROM  cyberdojofoundation/fsharp:4.0
LABEL maintainer=jon@jaggersoft.com

COPY packages.config .

RUN  apt-get install --yes curl \
  && curl -L http://nuget.org/nuget.exe -o nuget.exe \
  && mono --runtime=v4.0 nuget.exe restore -PackagesDirectory . \
  && mkdir /nunit \
  && mv NUnit.2.6.2         /nunit \
  && mv NUnit.Runners.2.6.1 /nunit \
  && apt-get remove --yes curl

COPY red_amber_green.rb /usr/local/bin

