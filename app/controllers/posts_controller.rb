class PostsController < ApplicationController
  def index

    Post.filter(params[:filter]) if params[:filter]

        
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
          format.html  { redirect_to(@post,
                        :notice => 'Post was successfully created.') }
          format.json  { render :json => @post,
                        :status => :created, :location => @post }
        else
          format.html  { render :action => "new" }
          format.json  { render :json => @post.errors,
                        :status => :unprocessable_entity }
        end
      end
  end
end