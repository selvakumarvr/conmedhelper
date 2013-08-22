StudyProject::Application.routes.draw do

  # Specific routes
  match 'home' => 'home#index', :as => :home
   resource :session
 resource :accounts
 
 
 resources :users, :controller => 'accounts'

  # Resources
  resources :drugs
  resources :studies
  
  match 'search' => 'studies#search', :as => :search
  
  match 'about' => 'home#feedback', :as => :feedback
    match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"
  
  # Set the root url
  root :to => 'sessions#new'
end
