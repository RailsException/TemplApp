TemplApp::Application.routes.draw do
  
  get "fgridreturns/getalldonars"

  get "donars/listalldonars"
  resources :mservices
  
  get "donars/listdonars"

  resources :sessions
  match '/login' => "sessions#login"
  match '/logout' => "sessions#destroy"
 

  resources :users
    match '/register' => "users#new"


  root :to => 'home#index'
  get "home/index"

 


end
