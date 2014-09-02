class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
      flash[:notice] = "login successful"
    else
      render "new"
  end

  private
    def user_params
      params.require(:comment).permit(:email, :password, :password_confirmation)
    end
  end
end
