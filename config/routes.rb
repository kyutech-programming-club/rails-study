Rails.application.routes.draw do
  get 'posts/index'
  root 'users#index'
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"
  resources 'users'
end


