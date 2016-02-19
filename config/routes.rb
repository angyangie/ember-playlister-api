Rails.application.routes.draw do
  

  devise_for :users, controllers: { sessions: 'sessions' }
  # get "current-user", to: "sessions#me"

  namespace :api do
    namespace :v1 do
      resources :songs, except: [:new, :edit]
      resources :albums, except: [:new, :edit]
      resources :artists, except: [:new, :edit]
      get "users/me", to: "users#me"
      get "users/:id", to: "users#show"
      # resource :users
    end
  end
 




end
