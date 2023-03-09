pkgname <- "billboardsongs"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
base::assign(".ExTimings", "billboardsongs-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
             function(x) {
               if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
               if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
               options(OutDec = '.')
               format(x[1L:3L], digits = 7L)
             },
             pos = 'CheckExEnv')

### * </HEADER>
library('billboardsongs')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("find_artist")
### * find_artist

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: find_artist
### Title: Find the artist from the song title
### Aliases: find_artist

### ** Examples

find_artist()
find_artist("Adventure of a Lifetime")
find_artist(title="Hymn for the Weekend")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("find_artist", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("random_song")
### * random_song

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: random_song
### Title: Select a random song
### Aliases: random_song

### ** Examples

random_song()
random_song("Maroon 5")
random_song(artist="The Beatles")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("random_song", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("song_lyrics")
### * song_lyrics

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: song_lyrics
### Title: Shows the lyrics for a selected song
### Aliases: song_lyrics

### ** Examples

song_lyrics()
song_lyrics("Let Me Love You")
song_lyrics(title="Treat You Better")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("song_lyrics", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("song_properties")
### * song_properties

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: song_properties
### Title: Gives properties of a song like Danceability and Energy
### Aliases: song_properties

### ** Examples

song_properties()
song_properties("Drive By")
song_properties(track_name="The Nights")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("song_properties", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("spotify_playlist_url")
### * spotify_playlist_url

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: spotify_playlist_url
### Title: Gives Billboard Year End Hot Singles Spotify playlist link for a
###   particular year
### Aliases: spotify_playlist_url

### ** Examples

spotify_playlist_url()
spotify_playlist_url("2010")
spotify_playlist_url(year = "2015")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("spotify_playlist_url", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
