class PostsController < ApplicationController

   before_filter :authorize, only: [:new, :create, :edit, :update, :destroy]

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
    @user = @post.user
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post Deleted"
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:name, :article).merge(user_id: current_user.id)
  end

end
