Vpn::Engine.routes.draw do
  get 'home'=>'home#index'

  resources :users
  resources :hosts
end
