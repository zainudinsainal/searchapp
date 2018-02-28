Rails.application.routes.draw do
  resources :agencies

  namespace :admin do
    resources :agencies
    
  end

  root to: "admin/agencies#index"

end
