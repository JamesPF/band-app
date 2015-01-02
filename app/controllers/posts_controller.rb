class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create

    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      redirect_to @post, notice: 'There was an error creating the new post.'
    end

  end

  def post_params
    params.require(:post).permit(:date, :title, :body)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params.require(:post).permit(:date, :title, :body))
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
    
end
