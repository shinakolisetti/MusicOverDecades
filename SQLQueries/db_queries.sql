SELECT * FROM MusicOverDecades.artist;
SELECT * FROM MusicOverDecades.artist_song;
SELECT * FROM MusicOverDecades.likes;
SELECT * FROM MusicOverDecades.song;
SELECT * FROM MusicOverDecades.listens_to;
SELECT * FROM MusicOverDecades.listeners;

# Music popularity by location: Select the song title, song hotness and artist location
#ALL LOCATIONS
SELECT a.name, s.title, s.hotness, a.location, a.genre, s.year
FROM MusicOverDecades.song s, MusicOverDecades.artist a, MusicOverDecades.artist_song l
WHERE a.artistId = l.artistId AND s.songId = l.songId AND s.hotness <> 'nan' AND a.location <> ''
ORDER BY s.hotness DESC;
#BY LOCATION:
SELECT a.name, s.title, s.hotness, a.location, s.year
FROM MusicOverDecades.song s, MusicOverDecades.artist a, MusicOverDecades.artist_song l
WHERE a.artistId = l.artistId AND s.songId = l.songId AND s.hotness <> 'nan' AND a.location LIKE '%New York City%'
ORDER BY s.hotness DESC;

#BY GENRE:
SELECT a.name, s.title, s.hotness, a.genre, s.year
FROM MusicOverDecades.song s, MusicOverDecades.artist a, MusicOverDecades.artist_song l
WHERE a.artistId = l.artistId AND s.songId = l.songId AND s.hotness <> 'nan' AND a.genre LIKE '%rock%'
ORDER BY s.hotness DESC;


#Listeners to Artists/Songs
#BY LOCATION:
SELECT l1.first_name, l1.last_name, l1.gender, l1.location, a.name, a.location
FROM MusicOverDecades.listeners l1, MusicOverDecades.artist a, MusicOverDecades.likes l2
WHERE l1.listenerId = l2.listenerId AND a.artistId = l2.artistId AND a.location LIKE l1.location;

#GENRE BY AGE
SELECT l.first_name, l.last_name, l.age, a.genre
FROM MusicOverDecades.artist a, MusicOverDecades.listeners l, MusicOverDecades.likes l1
WHERE a.artistId = l1.artistId AND l.listenerId = l1.listenerId AND a.genre <> ''
GROUP BY a.genre;

SELECT l.first_name, l.last_name, l.age, a.genre
FROM MusicOverDecades.artist a, MusicOverDecades.listeners l, MusicOverDecades.likes l1
WHERE a.artistId = l1.artistId AND l.listenerId = l1.listenerId AND a.genre <> ''
GROUP BY l.age;


SELECT a.genre, COUNT(*) AS `num`
FROM MusicOverDecades.artist a, MusicOverDecades.listeners l
WHERE a.genre <> ''
GROUP BY a.genre
ORDER BY `num` DESC;
  


SELECT a.genre, COUNT(a.genre)
FROM MusicOverDecades.listeners l1, MusicOverDecades.artist a, MusicOverDecades.likes l2
WHERE l1.listenerId = l2.listenerId AND a.artistId = l2.artistId;
