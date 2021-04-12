Rails.application.routes.draw do

  devise_for :accounts
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get "about" => "public#about", as: :about #setting urls for rails, assigning them to controllers and actions with => "about..." as: :about for example
  get "blog" => "public#blog", as: :blog
  get "contact" => "public#contact", as: :contact
 

#post "post/view" => "posts#save_post_view", as: :post_view (code never implemented)

  
  root to: "public#homepage"
end
