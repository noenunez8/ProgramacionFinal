Rails.application.routes.draw do
  resources :issues
  resources :article_of_clothings
  resources :brands
  resources :people
  resources :programs
  devise_for :users

  root "people#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
