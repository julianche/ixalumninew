class PostsController < ApplicationController

	def new
	end 

	def create
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.build(params[:id])
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


	def edit
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.find(params[:id])
		render 'edit'
	end 


	def index
		@post = Post.all
	end 

	def update
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.find(params[:id])
		if @post.update(post_params)
			redirect_to forum_post_path
		else
		render 'edit'
		end 
	end 

	def destroy
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.find(params[:id])
		@post.destroy
		redirect_to forum_path
	end 
	

	private


	def post_params
		params.require(:post).permit(:title, :body)
	end 
end 
