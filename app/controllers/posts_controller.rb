class PostsController < ApplicationController

	def new
	end 

	def create
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.build(post_params)
		# @post.user = @user
		@user = User.find(params[:user_id])
		binding.pry
		if @post.save 
			redirect_to @forum
		else 
			render @post
		end
	end 

	private

	def set_user
		@user = current_user
	end 

	def post_params
		params.require(:post).permit(:title, :body)
	end 

end 