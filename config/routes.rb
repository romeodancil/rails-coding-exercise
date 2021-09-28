Rails.application.routes.draw do
  resources :products
  resources :criterias
  root 'products#index'
  get 'search', to: 'products#show'
end
