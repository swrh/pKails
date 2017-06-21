Rails.application.routes.draw do
  resources :customers
  resources :representatives
  resources :indications
  resources :regions
  resources :proposal_statuses
  resources :reasons
  resources :activities
  resources :products
  resources :departments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
