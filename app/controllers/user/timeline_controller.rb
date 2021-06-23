class User::TimelineController < UserController
  
    def index
        @posts =  Post.where(user_id: current_user.following.pluck(:id)).order(id: :desc)
                            #pega todos ids das pessoas que current_user(eu) segue
        #@posts esta recebendo os posts dos usuarios que o usuario atual segue 
        @comment = Comment.new
    end
    
end