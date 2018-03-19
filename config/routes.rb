Rails.application.routes.draw do
  resources :cities, only: :index
  resources :famous_people
  resources :states, only: :index
  root "famous_people#index"
end
