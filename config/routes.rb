Rails.application.routes.draw do

  root 'static_pages#index'
  resources :experiences, except: :show
  resources :jobs, as: :cv
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
