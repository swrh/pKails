Rails.application.routes.draw do
  resources :activities
  resources :products
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
