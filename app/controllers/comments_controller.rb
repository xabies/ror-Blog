class CommentsController < ApplicationController
  
  before_filter :authenticate, :except => [:create, :show]
  


  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end



  # GET /comments/1/edit
#  def edit
#    @comment = Comment.find(params[:id])
#  end

  # POST /comments
  # POST /comments.xml
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    redirect_to @post
  end

 


end
