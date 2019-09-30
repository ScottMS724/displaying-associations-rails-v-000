class Post < ActiveRecord::Base
  belongs_to :category 
  
  def user_params
    params.require(:post).permit(:title, :description, :post_status)
  end
end
