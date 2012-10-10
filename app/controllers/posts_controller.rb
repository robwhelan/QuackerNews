class PostsController < ApplicationController
  def index
    @posts = Post.all
    @foo = 'bar'
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
  end

end
