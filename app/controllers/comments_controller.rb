class CommentsController < ApplicationController

	before_action :set_user

	def new
	end 

	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = @user
    if @comment.save
      redirect_to forum_post_path(@post.forum, @post)
    else
      render @post
    end
  end

   private
  
  def set_user
    @user = current_user
  end

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end

end