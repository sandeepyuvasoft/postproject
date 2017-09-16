class PostsController < ApplicationController
	before_action :all_posts, only: [:index,:create, :destroy]
  respond_to :html, :js
	def index
		
	end
	def new
    @post = Post.new
  end

  def create
    @post  = Post.new(post_params)
    @post.save

  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
  private

  def all_posts
    @posts = Post.all
  end
  def post_params
    params.require(:post).permit(:post,:pic).merge(user_id: current_user.id)
  end
end
