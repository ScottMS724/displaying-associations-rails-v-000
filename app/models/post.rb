class Post < ActiveRecord::Base
  belongs_to :category 
  
  def user_params
    params.require(:post).permit(:username, :email, :password, :salt, :encrypted_password)
  end
end
