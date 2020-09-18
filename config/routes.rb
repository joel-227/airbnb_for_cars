Rails.application.routes.draw do
  devise_for :users
  root to: 'users#home'
  get 'cars/price_asc', to: "cars#price_asc"
  get 'cars/price_des', to: "cars#price_des"
  get 'cars/age_asc', to: "cars#age_asc"
  get 'cars/age_des', to: "cars#age_des"
  resources :cars do
    resources :bookings
  end
  get 'my_cars', to: 'cars#my_cars'
  get 'my_cars/:id', to: 'cars#my_cars_show', as: :my_car
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
#Mark comment
