class MP3Importer
  attr_accessor :path

  @@files = Array.new

  def initialize(path)
    @path = path
  end

  def files
    @@files << Dir["/spec/fixtures/mp3s/*"]
  end
end
