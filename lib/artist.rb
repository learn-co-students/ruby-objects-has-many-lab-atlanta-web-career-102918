require "pry"
class Artist

  ###WHEN / WHERE DO THEY PASS IN THE ARTIST NAME
  #name is artist name.  song is made up
  def name
    @name
  end

  def name=(artist)
    @name = artist
  end

  @@all = []
  def initialize(name)
    @name = name
    @@all << name
  end


  def self.all
    @@all
  end
  def songs
    @songs
  end

  def add_song(song)
    # binding.pry
    @songs << song
  end
  def add_song_by_name(song_arg)
    cur_artist = Artist.new(self)
    song_arg.artist = cur_artist
  end

  def self.song_count
    Song.all.length
  end
end

class Song
  #name is song name.  artist is to help link to artist.rb file?  somehow
  attr_accessor :title
  attr_reader :artist
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    @artist = nil
  end
 binding.pry


  def artist_name=(name)
    binding.pry
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.all
    @@all
  end
end
