Rails.application.routes.draw do
  root to:'top#index'
  devise_for :users

  resources :plans do
    resources :suggestions, only:[:create]
  end
  # resources :plans do
  #   resources :comments, only: [:create]
  # end

  resources :suggestions, only: [:index]
  resources :users
  resources :reports
  # get "/plans/index" => 'plans#index'
  # get "/plans/new" => 'plans#new'
  # post "/plans/new" => 'plans#create'



end
