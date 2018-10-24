class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
  end

  def files
    Dir["/spec/fixtures/mp3s/*"].each do |file|
      @@files << file
    end
  end
end
