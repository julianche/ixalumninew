class ForumsController < ApplicationController
  def index
    @forum = Forum.all
  end

  def home
  end


  def create
    #must make for admins only
    @forum = Forum.new(forum_params)
    
    if @forum.save
    redirect_to @forum
    else
    render 'new'
    end 
  end

  def show
    @forum = Forum.find(params[:id])
    @post = Post.new
    render 'show'
  end 

  def new
    @forum=Forum.new 
  end

  def edit
    @forum=Forum.find(params[:id])
    render 'edit'
  end 

  def update
    @forum =Forum.find(params[:id])
    if @forum.update(forum_params)
      redirect_to @forum
    else
    render 'edit'
    end 
  end 

  def destroy
    @forum =Forum.find(params[:id])
    @forum.destroy
    redirect_to forums_path
  end 

  private

  def forum_params
    params.require(:forum).permit(:name, :description)
  end 
end 
