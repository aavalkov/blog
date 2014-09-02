class User < ActiveRecord::Base
  validates :email, :presence => true
  validates_uniqueness_of :emial

  has_secure_password

  private
  def user_params
    params.require(:comment).permit(:email, :password, :password_confirmation)
  end
end
