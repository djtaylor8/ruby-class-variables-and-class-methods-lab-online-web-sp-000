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
    @@genre << genre 
    @@artists << artist 
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    genres = @@genres.uniq
    genres 
  end
  
  def self.artists 
    artists = @@artists.uniq 
    artists
  end
  
  def self.genre_count
    number_of_genres = @@genres.group_by{ |v| v }.map{ |k, v| [k, v.size] }.to_h
  end 
  
  def self.artist_count
    
  end 
end

