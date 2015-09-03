class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user, :counter_cache => true
  has_many :comments
end
