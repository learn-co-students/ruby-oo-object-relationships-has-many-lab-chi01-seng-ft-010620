class Author

    attr_accessor :name
    attr_reader :posts

    @@all_posts = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
        @posts << post
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
        @@all_posts.count
    end

    def self.all_posts
        @@all_posts
    end

end