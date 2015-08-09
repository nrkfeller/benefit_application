Rails.application.routes.draw do
  
  devise_for :users
  resources :partners
  root :to => "pages#home"
  get 'blog', to: 'pages#blog'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :benefits
  resources :categories, only: [:new, :create, :show]
end
