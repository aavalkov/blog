class Post < ActiveRecord::Base
  validates :name, :presence => true
  validates :article, :presence => true

  belongs_to :user
end
