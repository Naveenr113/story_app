class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at desc')
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
  end

  def likes
    @post = Post.find(params[:id])
      @post.update(likes: @post.likes+1)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :name, :url, :likes)
  end
end
