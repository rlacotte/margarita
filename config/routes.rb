Rails.application.routes.draw do
  resources :document_templates
  resources :events
  resources :contacts
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
