class PublicController < ApplicationController #new controller inherits application controller
  
  def homepage
    @posts = Post.all
  end
  
end