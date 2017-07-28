Rails.application.routes.draw do
  resources :qand_as
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :users
end
