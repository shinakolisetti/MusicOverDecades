-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: MusicOverDecades
-- Source Schemata: MusicOverDecades
-- Created: Tue Oct 14 15:48:18 2014
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema MusicOverDecades
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `MusicOverDecades` ;
CREATE SCHEMA IF NOT EXISTS `MusicOverDecades` ;

-- ----------------------------------------------------------------------------
-- Table MusicOverDecades.artist
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `MusicOverDecades`.`artist` (
	`name` VARCHAR(45) NOT NULL,
	`artistId` VARCHAR(50) NOT NULL,
    `genre` VARCHAR(45) NULL DEFAULT NULL,
	`familiarity` VARCHAR(45) NULL DEFAULT NULL,
	`hotness` VARCHAR(45) NULL DEFAULT NULL,
    `location` VARCHAR(45) NULL DEFAULT NULL,
	`7digitalId` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`artistId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table MusicOverDecades.artist_song
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `MusicOverDecades`.`artist_song` (
  `artistId` VARCHAR(50) NOT NULL,
  `songId` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`artistId`, `songId`),
  INDEX `FK_artist_song2_idx` (`songId` ASC),
  CONSTRAINT `FK_artist_song1`
    FOREIGN KEY (`artistId`)
    REFERENCES `MusicOverDecades`.`artist` (`artistId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_artist_song2`
    FOREIGN KEY (`songId`)
    REFERENCES `MusicOverDecades`.`song` (`songId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table MusicOverDecades.song
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `MusicOverDecades`.`song` (
  `songId` VARCHAR(50) NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `hotness` VARCHAR(45) NULL DEFAULT NULL,
  `track_7digitalId` INT(11) NULL DEFAULT NULL,
  `danceability` INT(11) NULL DEFAULT NULL,
  `duration` FLOAT NULL DEFAULT NULL,
  `loudness` INT(11) NULL DEFAULT NULL,
  `tempo` INT(11) NULL DEFAULT NULL,
  `year` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`songId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table MusicOverDecades.listeners
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `MusicOverDecades`.`listeners` (
  `listenerId` VARCHAR(50) NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `gender` VARCHAR(50) NOT NULL, 
  `location` VARCHAR(50) NOT NULL,
  `age` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`listenerId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table MusicOverDecades.likes
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `MusicOverDecades`.`likes` (
  `listenerId` VARCHAR(50) NOT NULL,
  `artistId` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`listenerId`, `artistId`),
  INDEX `FK_artist_song2_idx` (`artistId` ASC),
  CONSTRAINT `FK_listener_artist1`
    FOREIGN KEY (`listenerId`)
    REFERENCES `MusicOverDecades`.`listeners` (`listenerId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_listener_artist2`
    FOREIGN KEY (`artistId`)
    REFERENCES `MusicOverDecades`.`artist` (`artistId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- ----------------------------------------------------------------------------
-- Table MusicOverDecades.listens
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `MusicOverDecades`.`listens_to` (
  `listenerId` VARCHAR(50) NOT NULL,
  `songId` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`listenerId`, `songId`),
  INDEX `FK_artist_song2_idx` (`songId` ASC),
  CONSTRAINT `FK_listener_song1`
    FOREIGN KEY (`listenerId`)
    REFERENCES `MusicOverDecades`.`listeners` (`listenerId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_listener_song2`
    FOREIGN KEY (`songId`)
    REFERENCES `MusicOverDecades`.`song` (`songId`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-------------------------------------------------------------------------------
-- Table MusicOverDecades.song_association
-- ----------------------------------------------------------------------------
/*CREATE TABLE IF NOT EXISTS `MusicOverDecades`.`song_association` (
  `songA` varchar(50) NOT NULL,
  `songC` varchar(50) NOT NULL,
  `support` float NOT NULL,
  `confidence` float NOT NULL,
  `lift` float NOT NULL
--  KEY `FK_song_association_idx` (`songA`,`songC`),
--  KEY `FK_song_assoc1_idx` (`songA`),
--  KEY `FK_song_assoc2_idx` (`songC`),
 -- CONSTRAINT `FK_song_assoc1` FOREIGN KEY (`songA`) REFERENCES `song` (`songId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
 -- CONSTRAINT `FK_song_assoc2` FOREIGN KEY (`songC`) REFERENCES `song` (`songId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) 
ENGINE=InnoDB 
DEFAULT CHARSET=utf8;*/

-- ----------------------------------------------------------------------------
-- Table MusicOverDecades.artist_term
-- ----------------------------------------------------------------------------
/* CREATE TABLE IF NOT EXISTS `MusicOverDecades`.`artist_term` (
  `artistId` VARCHAR(50) NOT NULL,
  `termId` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`artistId`, `termId`),
  INDEX `FK_artist_term2_idx` (`termId` ASC),
  CONSTRAINT `FK_artist_term1`
    FOREIGN KEY (`artistId`)
    REFERENCES `MusicOverDecades`.`artist` (`artistId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  -- CONSTRAINT `FK_artist_term2`
  --  FOREIGN KEY (`termId`)
   -- REFERENCES `MusicOverDecades`.`term` (`termId`)
   -- ON DELETE CASCADE
   -- ON UPDATE CASCADE
   )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
*/