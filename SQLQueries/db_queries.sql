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
WHERE a.artistId = l.artistId AND s.songId = l.songId AND s.hotness <> 'nan'
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

