Rails.application.routes.draw do
  
  root :to => "pages#home"
  get 'blog', to: 'pages#blog'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
end
