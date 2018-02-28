Rails.application.routes.draw do
  resources :agencies

  namespace :admin do
    resources :agencies
    root "agencies#index"
  end
end
