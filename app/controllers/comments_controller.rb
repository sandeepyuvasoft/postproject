class CommentsController < ApplicationController
  respond_to :html, :js
  def new
  	@posts= Post.all 
		@post = Post.find(params[:post_id])
  	@comment=Comment.new
  end
  def create
  	@posts= Post.all 
		@post = Post.find(params[:post_id]) 
		@comment =Comment.new(comment_params)
		@comment.save

  end
  private
  def comment_params
  	params.require(:comment).permit(:comment).merge(user_id: current_user.id,post_id: @post.id)

  end
end
