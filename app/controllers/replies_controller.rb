class RepliesController < ApplicationController
  before_action :all_tasks, only: [:new,:create]
  before_action :set_tasks, only: [:new,:create]
	respond_to :html, :js

	def new
  	@reply=Reply.new
  end
  def create
  	@reply=Reply.new(reply_params)
  	@reply.save
  end

  private
  def all_tasks
    @posts= Post.all 
    @comments= Comment.all 
  end
  def set_tasks
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:comment_id])
  end
  def reply_params
  	params.require(:reply).permit(:reply).merge(user_id: current_user.id,post_id: @post.id,comment_id: @comment.id)
  end

end
