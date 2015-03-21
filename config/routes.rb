Vpn::Engine.routes.draw do
  resources :users do
    get 'logs'
  end

  resources :hosts do
    get 'logs'
  end

  root 'home#index'
end
