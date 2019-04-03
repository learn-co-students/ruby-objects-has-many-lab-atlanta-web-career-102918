class Artist
  attr_accessor :name

  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end

  def self.song_count
    song_count = 0
    @@artists.each {|artist| song_count += artist.songs.count }
    song_count 
  end
end