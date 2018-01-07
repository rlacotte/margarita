Rails.application.routes.draw do
  get "/pages/*page" => "pages#show"
  devise_for :users
  devise_scope :user do
    root 'pages#show', page: "home_user"
  end
  root "pages#show", page: "home"

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
