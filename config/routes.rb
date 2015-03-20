Vpn::Engine.routes.draw do

  scope '/:locale' do
    resources :users do
      get 'logs'
    end

    resources :hosts do
      get 'logs'
    end
  end

  root 'home#index'
end
