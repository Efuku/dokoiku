Rails.application.routes.draw do
  root to:'top#index'
  devise_for :users

  get "/index" => 'plans#index'
  get "/index/new" => 'plans#new'
  post "/index/create" => 'plans#create'



end
