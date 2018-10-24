class Song
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def self.new_by_filename(filename)
    parsed_song = filename.split(" - ")[1]
    parsed_artist = filename.split(" - ")[0]
    song = self.new(parsed_song)
    song.artist.name = parsed_artist
  end
end
