Rails.application.routes.draw do
  
  resources :partners
  root :to => "pages#home"
  get 'blog', to: 'pages#blog'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :benefits
end
