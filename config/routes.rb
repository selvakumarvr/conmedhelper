StudyProject::Application.routes.draw do

  # Specific routes
  match 'home' => 'home#index', :as => :home
  
  # Resources
  resources :drugs
  resources :studies
  
  match 'search' => 'studies#search', :as => :search
  

  # Set the root url
  root :to => 'home#index'
end
