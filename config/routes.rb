Rails.application.routes.draw do
  
  resources :lectures
  resources :courses
  resources :lectures do 
    member do
      
      put "like", to: "lectures#upvote"
      put "dislike", to: "lectures#downvote"
      get "spam"  =>"lectures#spam"
    end
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  mount Commontator::Engine => '/commontator'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  

end
