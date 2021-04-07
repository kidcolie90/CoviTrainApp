class Catagory < ApplicationRecord
  
  validates_presence_of :title, :url
  has_many :posts #one catagory can have many database posts
  
end
