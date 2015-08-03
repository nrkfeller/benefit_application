Rails.application.routes.draw do
  
  get 'home', to: 'pages#home'
  get 'blog', to: 'pages#blog'
  get 'about', to: 'pages#about'
end
