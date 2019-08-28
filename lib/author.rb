class Author
    attr_accessor :name

    def initialize (name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def self.post_count
       Post.all.reduce(0) {|memo, post| post.author ? memo + 1 : memo}  
    end
end