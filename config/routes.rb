Rails.application.routes.draw do
  resources :posts
  resources :users
  root to: 'posts#index', constraints: lambda{|req| !req.session[:user_id].blank?}
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
