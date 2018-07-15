FROM debian:latest

RUN apt-get update && apt-get install -y ffmpeg curl wget

WORKDIR /usr/src/app

RUN wget "https://www.github.com$( \
curl -sL https://github.com/hydrusnetwork/hydrus/releases/latest \
| grep 'Linux.-.Executable.tar.gz' \
| sed -n 's/.*href="\([^"]*\).*/\1/p')"

RUN tar zxvf $(ls | grep "Linux.-.Executable.tar.gz") --strip-components 1
RUN rm $(ls | grep "Linux.-.Executable.tar.gz")

EXPOSE 45870/tcp
EXPOSE 45871/tcp
EXPOSE 45872/tcp

CMD ./server -d="/data"
