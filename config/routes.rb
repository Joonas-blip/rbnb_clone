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
    resources :bookings, only: [ :new, :create, :edit, :update, :show] do
      member do
        get '/confirm', to: 'bookings#confirm'
        get '/reject', to: 'bookings#reject'
      end
    end
  end
  resources :bookings, only: [:destroy]
  get '/dashboard', to: 'dashboards#profile'
  get '/dashboard/bookings', to: 'dashboards#bookings'

end
