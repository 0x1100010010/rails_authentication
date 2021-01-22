Rails.application.routes.draw do
  resources :sign_ups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sign_ups#index'
end