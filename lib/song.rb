require "pry"
class Song
    attr_accessor :name, :artist, :genre

    #number of songs made
    @@count = 0

    #array that contains all of the artists of existing songs
    @@artists = []

    #array that contains all of the genres of existing songs
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre


    end

    #returns that number of songs created
    def self.count
        @@count
    end

    #returns a unique array of artists of existing songs
    def self.artists
        @@artists.uniq
    end

    #returns a unique array of genres of existing songs
    def self.genres
        @@genres.uniq
    end
   
    #returns a hash of genres and the number of songs that have those genres
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre] #if genre already exists in the hash
                genre_count[genre] += 1
            else #if new genre
                genre_count[genre] = 1
            end
        end
        genre_count
    end

    #returns a hash of artists and the number of songs that have those artists
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist] #if artist already exists in the hash
                artist_count[artist] += 1
            else #if new artist
                artist_count[artist] = 1
            end
        end
        artist_count
    end


end