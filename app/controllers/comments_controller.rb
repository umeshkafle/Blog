class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments

    
  end

  def show
   @post = Post.find(params[:post_id])
  @comment = @post.comments.find(params[:id])
  end

  def new
    
  end

  def create
    @post = Post.find(params[:post_id])
    @comments = @post.comments.new(comments_params)    
    if @post.save
      redirect_to posts_path
     end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def comments_params
    params.require(:comment).permit(:body, :name)
  end
end
