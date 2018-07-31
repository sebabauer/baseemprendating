Rails.application.routes.draw do
  resources :ideas
  resources :users
  resources :first_names

  root to: 'ideas#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
