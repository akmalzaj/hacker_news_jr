class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts
  has_many :comments

  def self.authenticate(name, password)
    @user = User.find_by_name(name)

    return false if @user.nil? 
    # nil? → true; Only the object nil responds true to nil?.
    # this is to say if the obj does not exist, 
    # it will return true to nil?
    if @user.password == password
      return @user
    else
      return false
    end
  end
end
