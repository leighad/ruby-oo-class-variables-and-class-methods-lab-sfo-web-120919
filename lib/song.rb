require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        #returns a hash of genres and the number of songs that have those genres
        #{"pop" => 1, "rap" => 2}

        @@genre_count = Hash.new(0)
        @@genres.each {|genre| @@genre_count[genre] += 1}
        @@genre_count

        # EXAMPLE:
        # genres = ["rap", "rap", "pop"]
        # genre_count = Hash.new(0)
        # genres.each {|genre| genre_count[genre] += 1}
        # genre_count
    end

    def self.artist_count
        #returns a hash of artists and the number of songs that have those artists
        #{"Brittany Spears" => 1, "Jay-Z" => 2}
        @@artist_count = Hash.new(0)
        @@artists.each {|artist| @@artist_count[artist] += 1}
        @@artist_count
    end









end







