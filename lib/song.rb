class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
  self.artist ? self.artist.name : nil
end

  def self.new_by_filename(filename)
    parsed_song = filename.split(" - ")[1]
    parsed_artist = filename.split(" - ")[0]
    #song = self.new(parsed_song)

  end
end
