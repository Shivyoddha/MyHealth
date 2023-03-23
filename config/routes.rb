Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/myadmin', as: 'rails_admin'
  get 'doctor/myslot'

  resources :slots
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_scope :user do
root to: "devise/sessions#new"
end
  # Defines the root path route ("/")
  # root "articles#index"
end
