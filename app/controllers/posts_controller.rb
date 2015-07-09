class PostsController < ApplicationController

	def new
	end 

	def create
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.build(post_params)
		@post.user = current_user
		if @post.save 
			redirect_to @forum
		else 
			render 'new'
		end
	end 

	def show
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.find(params[:id])
		@comment = Comment.new(:post => @post)
	end 


	def edit
		@forum = Forum.find(params[:forum_id])
		@post = @forum.posts.find(params[:id])
		render 'edit'
	end 


	def index
		@posts = Forum.find(params[:forum_id]).posts
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
		@forum = Forum.find params[:forum_id]
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to @forum
	end 
	

	private


	def post_params
		params.require(:post).permit(:title, :body, :forum_id)
	end 
end 
