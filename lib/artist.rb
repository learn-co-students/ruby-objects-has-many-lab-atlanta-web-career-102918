class Artist
  attr_accessor :name
  def initialize(name)
     @name = name
     @songs = []
  end



  def songs
    @songs
  end

  def add_song(song)
    self.songs << song #This connects the song to the artist
    song.artist = self #self in the method refers to artist. It refers to line 4 on the song class.
                      #This connects the artist to the song in the song method
                      #because of line 16 I can call "crazy_in_love.artist" and get Jay-z
                      #So I have to do jay_z = "Jay-Z" then jay_z.add_song(crazy_in_love) and it connects the two together.
  end

  def add_song_by_name(name) #the purpose here is to combine the steps of creating a song and then adding it to
                      # an artist.  So combining crazy_in_love = Song.new("..") and jay_z.add_song(crazy_in_love)
      song = Song.new(name)
      self.songs << song
      song.artist = self
  end

  def self.song_count
    Song.all.length

  end

end
