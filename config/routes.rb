Vpn::Engine.routes.draw do
  resources :users do
    get 'logs'
  end

  resources :hosts do
    get 'logs'
  end

  get 'sitemap' => 'home#sitemap', constraints: {format: 'xml'}
  root 'home#index'
end
