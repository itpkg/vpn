Vpn::Engine.routes.draw do
  resources :users do
    get 'logs'
  end

  resources :hosts do
    get 'logs'
  end

  %w(sitemap rss).each { |a| get a => "home##{a}", constraints: {format: 'xml'} }
  root 'home#index'
end
