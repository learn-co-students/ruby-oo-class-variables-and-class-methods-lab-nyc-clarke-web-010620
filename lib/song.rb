class Song

    attr_accessor :name, :artist , :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre
        @@count += 1
        @@artists << self.artist
        # if !@@genres.include?(self.genre)
        @@genres << self.genre
        # end
    end

    def self.count
        @@count
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
        hash = {}
        @@genres.each do |genre|
            hash[genre] = @@genres.count(genre)
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            hash[artist] = @@artists.count(artist)
        end
        hash
    end


end