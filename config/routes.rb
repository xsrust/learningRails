Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end
  root 'welcome#index'

  namespace :api , defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/'s do

  end
end
