Rails.application.routes.draw do
  resources :payments
  resources :projects
  resources :owners, path: 'clients'
  get 'home/index'

  resources :posts
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
