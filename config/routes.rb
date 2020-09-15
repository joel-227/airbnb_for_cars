Rails.application.routes.draw do
  devise_for :users
  root to: 'users#home'
  resources :cars
  get 'my_cars', to: 'cars#my_cars'
  get 'my_cars/:id', to: 'cars#my_cars_show', as: :my_car
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
