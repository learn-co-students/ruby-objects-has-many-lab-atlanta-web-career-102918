class Author

  def initialize(name) #like Mark
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

class Post
  @@all = []#gonna hold all posts
  def initialize(title) #like "how to cook ribeye steak"
    @title = title
    @@all << self #so "how to cook ribeye steak" is now in the all folder by title
  end

end
