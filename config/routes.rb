Rails.application.routes.draw do
  devise_for :admins, skip: [:registrarions], controllers: {sessions: "admins/sessions"}
 
  namespace :admin do
    root to: "home#index"
    resources :admins
  end

end
