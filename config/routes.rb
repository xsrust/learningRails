Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :articles do
    resources :comments
  end
  root 'welcome#index'

  # namespace :api , defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/'s do
    # scope module: :v0, constraints: ApiConstraints.new(version: 0, default: true) do

    # end
  # end
end
