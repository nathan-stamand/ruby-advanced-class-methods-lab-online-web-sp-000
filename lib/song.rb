class Song
  
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    name = self.new
    @@all << name
    name
  end
  
  def self.new_by_name(name_of_song)
    song = self.new
    song.name=(name_of_song)
    song
  end
  
  def self.create_by_name(name_of_song)
    song = self.create
    song.name=(name_of_song)
    song
  end
  
  def self.find_by_name(name_of_song)
    @@all.each do |i| 
      if i.name == name_of_song
        i
      else
        false 
      end
    end
  end
end
