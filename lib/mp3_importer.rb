class MP3Importer
  attr_accessor :path

  @@files = Array.new

  def initialize(path)
    @path = path
  end

  def files
    Dir["/spec/fixtures/mp3s/*.mp3"].each do |file|
      @@files << file
    end
  end
end
