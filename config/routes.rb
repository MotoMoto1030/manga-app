Rails.application.routes.draw do
  devise_for :users
  root to: 'comics#index'
  resources :comics, only: [:index, :new, :create]
end
