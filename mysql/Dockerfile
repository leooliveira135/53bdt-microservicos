FROM mysql:5.7

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
RUN echo !includedir /etc/mysql/conf.d/ >> /etc/mysql/my.cnf
RUN echo !includedir /etc/mysql/mysql.conf.d/ >> /etc/mysql/my.cnf
RUN echo [mysqld] >> /etc/mysql/my.cnf
RUN echo innodb_buffer_pool_size = 20M >> /etc/mysql/my.cnf

ADD ./spotify_ddl.sql /docker-entrypoint-initdb.d