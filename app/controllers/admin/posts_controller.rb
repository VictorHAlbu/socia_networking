class Admin::PostsController < AdminController

    def index
        @posts = Post.order(id: :desc)
    end

    def show
        @post = Post.find(params[:id])
    end


end