class Author 
  attr_accessor :name

  @@authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self 
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
    # why does the line of code below also work, when self isn't called with #add_post:
    # add_post(post) ; is "self" implied here?
  end

  def self.post_count
    post_count = 0
    @@authors.each {|author| post_count += author.posts.count}
    post_count
  end
end