Rails.application.routes.draw do

  
  resources :articles
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :articles do
    resources :comments
  end
  resources :contacts 
  root to: 'pages#index'
  get 'pages/contact'
  get 'pages/about'

end