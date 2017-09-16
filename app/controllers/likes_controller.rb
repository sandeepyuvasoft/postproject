class LikesController < ApplicationController
	respond_to :html, :js
 	def create
 		@posts= Post.all 
		@post = Post.find(params[:post_id]) 
		@user=current_user
		@like = @user.likes.new(post_id: @post.id) 
	  @like.save 
	  #redirect_to posts_path, :notice => 'Liked!'
	end 
	def destroy
		@posts= Post.all
  	@post = Post.find(params[:post_id])
  	@like = Like.where(user_id: current_user.id, post_id: @post.id).first
    @like.delete 
    #redirect_to posts_path, :notice => 'Unliked!'
	end
end
