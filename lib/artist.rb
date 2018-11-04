class Artist
  attr_accessor :name, :songs, :artist

  @@songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@songs << @song
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song
    new_song.artist = self
    @@songs << @song
  end

  def self.song_count
    @@songs.count
  end

end
