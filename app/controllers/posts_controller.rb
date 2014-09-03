class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post Saved"
      redirect_to posts_path
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
      flash[:notice] = "Post Updated"
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def show
    @post = Post.find(params[:id])
  end


  private
  def post_params
    params.require(:post).permit(:name, :article).merge(user_id: current_user.id)
  end

end
