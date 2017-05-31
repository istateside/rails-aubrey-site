Rails.application.routes.draw do
  resources :pages
  devise_for :admins, skip: [:registrations]
  
  root "pages#main"
  get 'about', to: "pages#about"
  get 'work/:permalink', to: 'pages#work'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :pages
  end
end
