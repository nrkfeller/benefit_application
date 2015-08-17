Rails.application.routes.draw do
  
  get 'user_benefits/new'

  devise_for :users
  resources :partners
  root :to => "pages#home"
  get 'blog', to: 'pages#blog'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :users # should be show only
  resources :benefits
  resources :categories, only: [:new, :create, :show]
  resources :users, only: [] do
    resources :benefits, controller: :user_benefits, only: [] do
        member { get :new, as: :new }
    end
  end
end
