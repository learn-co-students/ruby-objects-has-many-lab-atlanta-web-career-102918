require "pry"

class Song
  #name is song name.  artist is to help link to artist.rb file?  somehow

  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @artist = nil
  end



  def self.all
    @@all
  end
end
