class User::ProfileController < UserController
  
    def show
        @post = Post.new
        @comment = Comment.new
    end
    
    def potential_to_follow
        @potential_to_follow = User.potential_to_follow(current_user)
        #o escope dessa query potetial_to_follow está no modelo User
    end

    def following
        @following = current_user.following
    end

    def followers
        @followers = current_user.followers
    end
end