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
   get 'potential_to_follow', to: "profile#potential_to_follow"
   resources :posts, only: [:create] 

   post "follow/:id", to: "subscription#follow", as: :follow
  end

end
