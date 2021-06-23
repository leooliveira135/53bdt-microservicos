FROM mysql

MAINTAINER Leonardo Oliveira <rm340189@fiap.com.br>

RUN wget https://www.kaggle.com/siropo/spotify-multigenre-playlists-data/download
RUN unzip archive.zip

ADD ./spotify_ddl.sql /docker-entrypoint-initdb.d
