Rails.application.routes.draw do
  devise_for :users
    resources :users do
      resource :profile
    end 
 root to: 'pages#home'
 get 'about', to: 'pages#about'
 resources :contacts, only: :create
 get 'contact-us', to: 'contacts#new'
end
