Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'todolists#index'
  resources :todolists 
  get 'todoitems/new'
end
