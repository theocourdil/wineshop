Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'    
    get 'connect' => 'devise/sessions#connect'
  end

  resources :products, except: [:show]
  
  root to: 'products#index', as: 'home'
  resources :charges, only: [:new, :create]
end
