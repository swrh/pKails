Rails.application.routes.draw do
  root 'welcome#index'

  resources :prospections
  resources :users
  resources :customers
  resources :representatives
  resources :indications
  resources :regions
  resources :proposal_statuses
  resources :reasons
  resources :activities
  resources :products
  resources :departments
end
