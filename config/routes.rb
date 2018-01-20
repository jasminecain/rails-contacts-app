Rails.application.routes.draw do
  get 'person/index'

  root 'person#index'

  resources :contacts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
