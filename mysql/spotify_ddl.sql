CREATE DATABASE IF NOT EXISTS 53bdt_db;

USE 53bdt_db;

CREATE TABLE IF NOT EXISTS 53bdt_db.spotify_rock_playlists_data(
    artist_name varchar(40),    
    track_name varchar(40), 
    popularity integer, 
    genres varchar(200), 
    playlist varchar(40),   
    danceability decimal(20,10),   
    energy decimal(20,10), 
    music_key integer,  
    loudness decimal(20,10),   
    mode integer,   
    speechiness decimal(20,10),    
    acousticness decimal(20,10),   
    instrumentalness decimal(20,10),   
    liveness decimal(20,10),   
    valence decimal(20,10),    
    tempo decimal(20,10),  
    music_id varchar(40), 
    uri  varchar(40),    
    track_href varchar(200), 
    analysis_url varchar(200),   
    duration_ms integer,    
    time_signature integer
);

LOAD DATA INFILE 'rock_music_data.csv'
INTO TABLE 53bdt_db.spotify_rock_playlists_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE IF NOT EXISTS 53bdt_db.spotify_pop_playlists_data(
    artist_name varchar(40),    
    track_name varchar(40), 
    popularity integer, 
    genres varchar(200), 
    playlist varchar(40),   
    danceability decimal(20,10),   
    energy decimal(20,10), 
    music_key integer,  
    loudness decimal(20,10),   
    mode integer,   
    speechiness decimal(20,10),    
    acousticness decimal(20,10),   
    instrumentalness decimal(20,10),   
    liveness decimal(20,10),   
    valence decimal(20,10),    
    tempo decimal(20,10),  
    music_id varchar(40), 
    uri  varchar(40),    
    track_href varchar(200), 
    analysis_url varchar(200),   
    duration_ms integer,    
    time_signature integer
);

LOAD DATA INFILE 'pop_music_data.csv'
INTO TABLE 53bdt_db.spotify_pop_playlists_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE IF NOT EXISTS 53bdt_db.spotify_metal_playlists_data(
    artist_name varchar(40),    
    track_name varchar(40), 
    popularity integer, 
    genres varchar(200), 
    playlist varchar(40),   
    danceability decimal(20,10),   
    energy decimal(20,10), 
    music_key integer,  
    loudness decimal(20,10),   
    mode integer,   
    speechiness decimal(20,10),    
    acousticness decimal(20,10),   
    instrumentalness decimal(20,10),   
    liveness decimal(20,10),   
    valence decimal(20,10),    
    tempo decimal(20,10),  
    music_id varchar(40), 
    uri  varchar(40),    
    track_href varchar(200), 
    analysis_url varchar(200),   
    duration_ms integer,    
    time_signature integer
);

LOAD DATA INFILE 'metal_music_data.csv'
INTO TABLE 53bdt_db.spotify_metal_playlists_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE IF NOT EXISTS 53bdt_db.spotify_indie_playlists_data(
    artist_name varchar(40),    
    track_name varchar(40), 
    popularity integer, 
    genres varchar(200), 
    playlist varchar(40),   
    danceability decimal(20,10),   
    energy decimal(20,10), 
    music_key integer,  
    loudness decimal(20,10),   
    mode integer,   
    speechiness decimal(20,10),    
    acousticness decimal(20,10),   
    instrumentalness decimal(20,10),   
    liveness decimal(20,10),   
    valence decimal(20,10),    
    tempo decimal(20,10),  
    music_id varchar(40), 
    uri  varchar(40),    
    track_href varchar(200), 
    analysis_url varchar(200),   
    duration_ms integer,    
    time_signature integer
);

LOAD DATA INFILE 'indie_alt_music_data.csv'
INTO TABLE 53bdt_db.spotify_indie_playlists_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE IF NOT EXISTS 53bdt_db.spotify_hiphop_playlists_data(
    artist_name varchar(40),    
    track_name varchar(40), 
    popularity integer, 
    genres varchar(200), 
    playlist varchar(40),   
    danceability decimal(20,10),   
    energy decimal(20,10), 
    music_key integer,  
    loudness decimal(20,10),   
    mode integer,   
    speechiness decimal(20,10),    
    acousticness decimal(20,10),   
    instrumentalness decimal(20,10),   
    liveness decimal(20,10),   
    valence decimal(20,10),    
    tempo decimal(20,10),  
    music_id varchar(40), 
    uri  varchar(40),    
    track_href varchar(200), 
    analysis_url varchar(200),   
    duration_ms integer,    
    time_signature integer
);

LOAD DATA INFILE 'hiphop_music_data.csv'
INTO TABLE 53bdt_db.spotify_hiphop_playlists_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE IF NOT EXISTS 53bdt_db.spotify_blues_playlists_data(
    artist_name varchar(40),    
    track_name varchar(40), 
    popularity integer, 
    genres varchar(200), 
    playlist varchar(40),   
    danceability decimal(20,10),   
    energy decimal(20,10), 
    music_key integer,  
    loudness decimal(20,10),   
    mode integer,   
    speechiness decimal(20,10),    
    acousticness decimal(20,10),   
    instrumentalness decimal(20,10),   
    liveness decimal(20,10),   
    valence decimal(20,10),    
    tempo decimal(20,10),  
    music_id varchar(40), 
    uri  varchar(40),    
    track_href varchar(200), 
    analysis_url varchar(200),   
    duration_ms integer,    
    time_signature integer
);

LOAD DATA INFILE 'blues_music_data.csv'
INTO TABLE 53bdt_db.spotify_blues_playlists_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE IF NOT EXISTS 53bdt_db.spotify_alt_playlists_data(
    artist_name varchar(40),    
    track_name varchar(40), 
    popularity integer, 
    genres varchar(200), 
    playlist varchar(40),   
    danceability decimal(20,10),   
    energy decimal(20,10), 
    music_key integer,  
    loudness decimal(20,10),   
    mode integer,   
    speechiness decimal(20,10),    
    acousticness decimal(20,10),   
    instrumentalness decimal(20,10),   
    liveness decimal(20,10),   
    valence decimal(20,10),    
    tempo decimal(20,10),  
    music_id varchar(40), 
    uri  varchar(40),    
    track_href varchar(200), 
    analysis_url varchar(200),   
    duration_ms integer,    
    time_signature integer
);

LOAD DATA INFILE 'alternative_music_data.csv'
INTO TABLE 53bdt_db.spotify_alt_playlists_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;