Rails.application.routes.draw do
  resources :rabbits do
    resources :weights
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'rabbits#index'
end
