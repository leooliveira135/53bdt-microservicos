FROM mysql

MAINTAINER Leonardo Oliveira <rm340189@fiap.com.br>

RUN apt-get update
RUN apt-get install -y wget unzip
RUN mkdir -p archive
WORKDIR /archive
RUN wget https://www.kaggle.com/siropo/spotify-multigenre-playlists-data/download/alternative_music_data.csv
RUN wget https://www.kaggle.com/siropo/spotify-multigenre-playlists-data/download/blues_music_data.csv
RUN wget https://www.kaggle.com/siropo/spotify-multigenre-playlists-data/download/hiphop_music_data.csv
RUN wget https://www.kaggle.com/siropo/spotify-multigenre-playlists-data/download/indie_alt_music_data.csv
RUN wget https://www.kaggle.com/siropo/spotify-multigenre-playlists-data/download/metal_music_data.csv
RUN wget https://www.kaggle.com/siropo/spotify-multigenre-playlists-data/download/pop_music_data.csv
RUN wget https://www.kaggle.com/siropo/spotify-multigenre-playlists-data/download/rock_music_data.csv
RUN ls -lha

RUN echo bind-address=0.0.0.0 >> /etc/mysql/conf.d/mysql.cnf
RUN echo innodb_force_recovery=4 >> /etc/mysql/conf.d/mysql.cnf

ADD ./spotify_ddl.sql /docker-entrypoint-initdb.d
