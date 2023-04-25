Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users
  #devise_for :users
  resources :books, only: [:create, :index, :show, :edit, :destroy, :update]
  get 'home/about' =>"homes#about"
  resources :users, only: [:show, :edit, :update, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
