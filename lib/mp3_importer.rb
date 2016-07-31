class MP3Importer
  def initialize(path)
    @path = path
  end

  def path
    @path
  end

  def import
    files.each do |filename|
    Song.new_by_filename(filename)
    end
  end

  def files
    files = Dir.entries(path)
    @files = files.select do |file| 
      file.include? (".mp3")
    end
  end

end