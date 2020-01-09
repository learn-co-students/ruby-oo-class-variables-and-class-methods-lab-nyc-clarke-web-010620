require 'pry'
class Song

    attr_accessor :name, :artist, :genre
    @@all = []
    @@genres = []
    @@count = 0
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        if !@@all.include?(self)
            @@all << self
        end
        @@count += 1
        # binding.pry

    end
    def self.artists
        unique_artists = []
        @@artists.each do |artist|
            if !unique_artists.include?(artist)
                unique_artists << artist
            end
        end
        unique_artists
    end
    def self.count
        @@count
    end  
    def self.genres
        unique_genres = []
        @@genres.each do |genre|
            if !unique_genres.include?(genre)
                unique_genres << genre
            end
        end
        unique_genres
    end
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if !genre_count[genre]
                genre_count[genre] = 1
            else
                genre_count[genre] += 1
            end
        end
        genre_count
    end
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if !artist_count[artist]
                artist_count[artist] = 1
            else
                artist_count[artist] += 1
            end
        end
        artist_count
    end

end