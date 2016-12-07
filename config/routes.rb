Rails.application.routes.draw do
  root to:'top#index'
  # devise_for :users

  resources :plans
  # get "/plans/index" => 'plans#index'
  # get "/plans/new" => 'plans#new'
  # post "/plans/new" => 'plans#create'



end
