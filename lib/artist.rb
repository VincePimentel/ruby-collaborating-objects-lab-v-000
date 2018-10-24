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
    if !self.all.detect { |artist| artist.name == name }
      name = self.new(name)
      #name.save
    end
    name
  end

  def print_songs
    @songs.each { |song| puts song }
  end
end
