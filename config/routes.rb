Rails.application.routes.draw do
  get 'connexion', to: 'pages#connexion'
  devise_for :users
  resources :products
end
