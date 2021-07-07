class Author

    attr_reader :name, :posts

    def initialize(name)
        @name = name
        @post = []
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.post_count
        Post.all.select {|post| post.author}.count
    end

end