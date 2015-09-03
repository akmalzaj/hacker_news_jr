class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user, :counter_cache => true
  belongs_to :post, :counter_cache => true
end
