class User < ActiveRecord::Base
  validates :email, :presence => true
  validates_uniqueness_of :emial

  has_secure_password
end
