require 'bcrypt'

class User < ActiveRecord::Base
  validates :email, :presence => true
  validates_uniqueness_of :email

  has_many :posts

  has_secure_password
end
