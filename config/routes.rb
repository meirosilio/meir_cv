Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#index'
  devise_for :users
  resources :users, only: [:show]
  resources :experience_categories, except: :show
  resources :experiences
  get '*path' => redirect('/')

end
