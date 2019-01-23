class Author
    attr_accessor :name
    @@count = 0


    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        post.author = self
        @posts << post
        @@count += 1
    end

    def add_post_by_title(post_to_add)
        post = Post.new(post_to_add)
        post.author = self
        @posts << post
        @@count += 1
    end

    def posts
        @posts
    end
    
    def self.post_count
        @@count
    end

end