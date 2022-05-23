

class Photo
    attr_accessor :user
    attr_reader :comments

    def initialize(name)
        @comments = []
        @user = name
    end

    def make_comment(comment_text)
        new_comment = Comment.new(comment_text)
        self.comments << new_comment
        new_comment.photo = self
        new_comment
    end

end

class Comment(comment_text)
    @comment_text = comment_text
    @@all = []

    def initialize(text)
        @comment_text = text
        @@all = self
    end
end