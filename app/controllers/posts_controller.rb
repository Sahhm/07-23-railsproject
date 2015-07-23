class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new({title: params["title"], content: params["content"]})
    
    if @post.save
      redirect_to "/posts"
    else
      render "new"
    end
  end
  
end
