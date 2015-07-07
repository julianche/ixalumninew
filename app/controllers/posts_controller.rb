class PostsController < ApplicationController

	def new
	end 

	def create
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.build(post_params)
		@post.user = current_user
		# @user = User.find(params:[:user_id])
		# @user = User.find(params[:user_id])
		if @post.save 
			redirect_to @forum
		else 
			render @post
		end
	end 

	def show
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.find(params[:id])
	end 

	private

	def set_user
		@user = current_user
	end 

	def post_params
		params.require(:post).permit(:title, :body)
	end 

end 