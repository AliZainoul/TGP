Rails.application.routes.draw do
  resources :gossips
  resources :users
  resources :tags
  resources :links
  get 'team/', to: 'team#show'
  get 'contact/', to: 'contact#show'
end
