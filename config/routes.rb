Traco::Application.routes.draw do

  devise_for :users

  use_doorkeeper
  
  # devise_for :users

  namespace :api do
    namespace :v1 do
      resources :profiles
      get '/me' => "credentials#me"
      get '/fast' => 'fast#index'
    end
  end

  root :to => "home#index"

  
end
