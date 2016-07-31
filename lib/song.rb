class Song

  def initialize(name)
    @name = name
  end

  def name 
    @name
  end

  def name=(name)
    @name = name
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(filename)
    filename.slice!(".mp3")
    filename_array = filename.split(" - ")
    new_song = Song.new(filename_array[1])  
    new_song.artist=(Artist.find_or_create_by_name(filename_array[0]))
    new_song.artist.add_song(self)
    new_song

  end

end