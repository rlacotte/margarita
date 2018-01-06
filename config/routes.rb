Rails.application.routes.draw do
  namespace :config do
    resources :steps
  end
  resources :documents
  namespace :config do
    resources :document_templates
  end
  resources :events
  resources :contacts
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
