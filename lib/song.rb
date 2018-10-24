class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(name)
    self.artist ? self.artist.name : nil
  end

  def self.new_by_filename(filename)
    self.artist = self.new(filename.split(" - ")[0])
  end

end
