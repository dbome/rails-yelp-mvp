Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
