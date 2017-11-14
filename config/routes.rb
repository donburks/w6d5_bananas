Rails.application.routes.draw do
  resources :plantains do
    resources :peel, shallow: true
  end

  namespace :admin do
    resources :plantains
    resources :peel
  end
end
