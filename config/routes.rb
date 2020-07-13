Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  get "/dashboard" => "pages#dashboard"
  resources :topics do
    resources :posts
  end
end
