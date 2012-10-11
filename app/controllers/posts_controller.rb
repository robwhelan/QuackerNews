class PostsController < ApplicationController
  def index
    if params[:q]
      puts 'F0000:' + params[:q]
    end
    
    @posts = Post.all
    @foo = 'bar'
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.save
        format.html {redirect_to root_path,
          notice: 'successfully created post' }
          
  end

end
