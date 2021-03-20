Rails.application.routes.draw do
  devise_for :admins, skip: [:registrarions]
 
  namespace :admin do
    root to: "home#index"
  end

end
