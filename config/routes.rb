Rails.application.routes.draw do
  devise_for :users
  resources :agencies


  namespace :admin do
    resources :agencies
  end

  root to: "admin/agencies#index"

end
