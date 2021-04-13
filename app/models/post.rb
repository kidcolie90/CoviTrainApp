class Post < ApplicationRecord
  
  validates :title, presence: true # uniqueness: true, scope: {catagory_id} #blogs should have a title and it should be uniquen
  validates :summary, presence: true # length {maximum:350}
  validates :body, presence: true #length {minimum: 150}
 
  belongs_to :category
  belongs_to :account

  
  def details
    
  "This blog post was added on #{created_at.strftime("%m %y %d")}" #using strftime method to add a date and time display to each post
    
  
    
    #-below was never used in produ
   # after_create :post_log #trigger post log method after record has been added/ after blog post has been added
    
#    private post_log #will log and count total num of posts per catagory
    
 #   catagory.increment(:category_id, 1).save #as above logging the count of the catagory for each post and incrementing by 1
   
    
   
    
    
  end
  

    
end
