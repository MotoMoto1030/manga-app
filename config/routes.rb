Rails.application.routes.draw do
  devise_for :users
  root to: 'comics#index'
  resources :users, only: [:show]
  resources :comics, only: [:index, :new, :create] do
    resources :likes, only: [:create, :destroy]
  end

end
