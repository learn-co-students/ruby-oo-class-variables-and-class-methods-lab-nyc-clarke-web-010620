require 'pry'

class Song
    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize (name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@artists << artist
        @@genres << genre
    end
    
    attr_accessor :name, :artist, :genre

    def self.count
    @@count
    end 

    def self.artists
    @@artists.uniq
    end 

    def self.genres
    @@genres.uniq
    end 
    
    def self.genre_count
        h = Hash.new(0)
        @@genres.each{|key| h[key] += 1}
        h
    end
    
    def self.artist_count
        h = Hash.new(0)
        binding.pry
        @@artists.each{|key| h[key] += 1}
        h
    end 

end 