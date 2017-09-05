Rails.application.routes.draw do
 
 resources :topics do
  resources :posts, except: [:index]
 end
 
  get 'about' => 'welcome#about'
  
  get 'welcome/contact'
  
  root 'welcome#index'
end