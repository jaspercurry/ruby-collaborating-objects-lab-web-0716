class Artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def songs
    @songs
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end


  def add_song(song)
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end 

  def self.find_or_create_by_name(artist)
    if @@all.detect { |item| item.name == artist} == nil
      new_artist = Artist.new(artist)
      
      @@all << new_artist
      new_artist
    else
      @@all.detect { |item| item.name == artist}
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end 




end

