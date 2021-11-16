Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # create routes Epxeriences
  # Index -- list
  # show -- 1 experience
  # new -- && create
  # edit -- && update
  # delete
  resources :experiences do
    resources :bookings, only: [ :new, :create, :edit, :update, :show]
  end
  resources :bookings, only: [:destroy]
end
