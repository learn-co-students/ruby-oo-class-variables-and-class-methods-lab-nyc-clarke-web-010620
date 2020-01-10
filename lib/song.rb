
require 'pry'

class Song
    attr_reader :name, :artist, :genre, :count, :genres, :genre_hash

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre
        @@count += 1
    end

    def self.count
        @@count
        # binding.pry
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        # @@genres.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h    
        @@genres.each do |genre|
        if genre_hash[genre]
            # binding.pry
            genre_hash[genre] += 1
        else
            genre_hash[genre] = 1
            # @@genres[genre] = @@genres[genre].count
            end
        end
        genre_hash
    end

    def self.artist_count
        artists_hash = {}
        @@artists.each do |artist|
            if artists_hash[artist]
                artists_hash[artist] += 1
            else
                artists_hash[artist] = 1
            end
        end
        artists_hash
    end

end

# song1 = Song.new("toluca lake", "lil boosie", "trance")
# song2 = Song.new("Metaphysical", "Autograf", "deep house")
