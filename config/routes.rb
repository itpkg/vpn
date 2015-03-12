Vpn::Engine.routes.draw do
  #get 'home'=>'home#index'
  root 'home#index'

  resources :users
  resources :hosts
end
