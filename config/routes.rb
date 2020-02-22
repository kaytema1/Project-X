Rails.application.routes.draw do
  resources :followings
  resources :posts
  resources :clothing_lines
  resources :female_measurements
  resources :male_measurements
  resources :user_profiles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
