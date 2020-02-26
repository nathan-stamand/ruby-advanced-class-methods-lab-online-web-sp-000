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
    name_array = []
    @@all.each do |song| 
      name_array << song.name 
      if name_array.any?(name_of_song)
        return song
      end
    end
    false
  end
  
  def self.find_or_create_by_name(name_of_song)
    if self.find_by_name(name_of_song)
      puts self.find_by_name(name_of_song)   
    else 
      self.create_by_name(name_of_song)
    end
  end
  
end