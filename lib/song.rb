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
    @@all.each do |song| 
      @@all.find(name_of_song) {|song|song.name == name_of_song}
      if song.name == name_of_song 
        return song 
      end
    end
    false
  end
  
  def self.find_or_create_by_name(name_of_song)
    if find_by_name(name_of_song) == false 
      self.create_by_name(name_of_song)
    else 
      self.find_by_name(name_of_song)
    end
  end
  
end