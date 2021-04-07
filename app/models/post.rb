class Post < ApplicationRecord
  
  validates :title, presence: true # uniqueness: true, scope: {catagory_id} #blogs should have a title and it should be uniquen
  validates :summary, presence: true # length {maximum:350}
  validates :body, presence: true #length {minimum: 150}
  
  belongs_to :catagory

  
  def details
    
  "This blog post was added on #{created_at.strftime("%m %y %d")}" #using strftime method to add a date and time display to each post
    
    
  end
  
  
end
