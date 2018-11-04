class Author
  attr_accessor :name, :posts, :author

  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@posts << post
  end

  def add_post_by_title(post_name)
    new_post = Post.new(post_name)
    @posts << new_post
    new_post.author = self
    @@posts << @post
  end

  def self.post_count
    @@posts.count
  end
end
