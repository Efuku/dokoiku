Rails.application.routes.draw do
  root to:'top#index'
  devise_for :users

  resources :plans do
    resources :suggestions, only:[:create]
    collection do
      get 'search'
    end
  end
  # resources :plans do
  #   resources :comments, only: [:create]
  # end

  resources :suggestions, only: [:index]
  resources :users
  resources :reports do
    collection do
      get 'search'
    end
  end



end
