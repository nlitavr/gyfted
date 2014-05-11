Rails.application.routes.draw do
  resources :locations

  resources :gyfts

  devise_for :users
  root "pages#home"
  get "about" => "pages#about"

end
