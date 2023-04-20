Rails.application.routes.draw do

  devise_for :post_images
  devise_for :users
  #devise_for :users
  resources :books, only: [:new, :create, :index, :show]
  get 'books/edit'
  get 'homes/top'
  get 'homes/about'
  root to: "homes#top"
  resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
