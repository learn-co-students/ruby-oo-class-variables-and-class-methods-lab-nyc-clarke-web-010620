class Song 
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {} 
  
  attr_accessor :name, :artist, :genre, :count, :artists, :genres, :artist_coun, :genre_count
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1 
    @@artists << @artist
    @@genres << @genre
    
  end 
  
  def artists_count
    @artists.each do |artist|
      if @@artist_count[artist]
        @@artist_count[artist] += 1
      else 
        @@artist_count[artist] = 1
      end 
    end 
      @@artist_count
end 
  
  def genre_count
    @@genres.each do |genre|
      if @@genre_count[genre]
        @@agenre_count[genre] += 1
      else 
        @@genre_count[genre] = 1
      end 
    end 
      @@genre_count
    end 
  
  def artists
    @@artists.uniq
  end 
  
  def genres
    @@genres.uniq
  end 
  
  end 