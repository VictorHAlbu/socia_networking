Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  devise_for :admins, skip: [:registrations], controllers: {sessions: "admins/sessions"}
 
  namespace :admin do
    root to: "home#index"
    resources :admins
    resources :users, only: :index
    resources :posts, only: [:index, :show] 
  end

  root to: "user/timeline#index"

  namespace :user do
   get 'profile', to: "profile#show"
   resources :posts, only: [:create] 
  end

end
