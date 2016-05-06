Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :articles do
    resources :comments
  end


  root 'welcome#index'


  namespace :api do
  #scope '/api' do
    scope '/v0' do
      resources :articles
    end
  end
end
