class Song
    @@count = 0 
    @@artists = []
    @@genres = []
    @@artist_count = {}
    @@agenre_count = {}
    
    attr_accessor :name, :artist, :genre, :count, :artists, :genres, :artist_coun, :genre_count


    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1  
        @@artists << @artist
        @@genres << @genre
        
      end 
    
      def self.artists
        @@artists.uniq
      end 
      
      def self.genres
        @@genres.uniq
      end 
      
      def self.count 
        return @@count 
      end 
      
      def self.genre_count 
            @@genres.each do |genre| 
               if @@genre_count[genre] 
                  @@genre_count[genre] +=1
               else @@genre_count[genre] =1
                end
            end
            @@genre_count  
        end
      
      # def self.genre_count
        
      #   @@genres.each do |genre|
      #     # binding.pry 
      #     if @@genre_count[genre]
      #       @@agenre_count[genre] += 1
      #     else 
      #       @@genre_count[genre] = 1
      #     end 
      #   end 
      #     @@genre_count
      #   end 
      
      def self.artist_count
        @@artists.each do |artist|
          if @@artist_count[artist]
            @@artist_count[artist] += 1
          else 
            @@artist_count[artist] = 1
          end 
        end 
          @@artist_count
    end 
      
      end 