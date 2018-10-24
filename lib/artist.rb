class Artist
  attr_accessor :name, :songs

  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if !self.all.any?(name)
      name = self.new#(name)
      name.save
    else
      self.all.detect { |artist| artist.name == name }
    end
  end

  def print_songs

  end
end
