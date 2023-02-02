Rails.application.routes.draw do
  get 'search', to: 'search#index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'    
  end

  resources :products
  
  root to: 'products#index', as: 'home'
  resources :charges, only: [:new, :create]
end
