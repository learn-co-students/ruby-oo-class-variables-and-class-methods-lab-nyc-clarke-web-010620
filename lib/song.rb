class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count_hash = {}
    @@artist_count_hash = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
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
        @@genres.map do |entry|
            if @@genre_count_hash[entry]
                @@genre_count_hash[entry] += 1
            else
                @@genre_count_hash[entry] = 1
            end
        end
        @@genre_count_hash
    end

    def self.artist_count
        @@artists.map do |entry|
            if @@artist_count_hash[entry]
                @@artist_count_hash[entry] += 1
            else
                @@artist_count_hash[entry] = 1
            end
        end
        @@artist_count_hash
    end

end







