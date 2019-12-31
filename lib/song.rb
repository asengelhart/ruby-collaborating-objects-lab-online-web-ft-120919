class Song 

  attr_accessor :name, :artist  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 

  def self.new_by_filename(filename)
    #Assumes format "Name - Artist - Genre.mp3"
    name, artist_name, genre = filename.split(" - ")
    song = self.new(name)
    song.artist = Artist.find_or_create_by_name(artist_name)
  end 
  
end 