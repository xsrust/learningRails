Rails.application.routes.draw do
  resources :users
  
  get 'welcome/index'

  resources :articles do
    resources :comments
  end


  root 'welcome#index'


  namespace :api, defaults: { format: :json } do
    scope '/v0' do
      resources :articles # , only: [:index, :create]
    end
  end
end
