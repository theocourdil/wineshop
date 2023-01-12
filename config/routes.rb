Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'    
    get 'connect' => 'devise/sessions#connect'
  end
  
  root to: 'products#index', as: 'home'
  resources :products
end
