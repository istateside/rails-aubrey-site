Rails.application.routes.draw do
  resources :pages
  devise_for :admins, skip: [:registrations]
  
  root "pages#main"
  get 'about', to: "pages#about"
  get 'work/:permalink', to: 'pages#work'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :admin do
    get 'admin/*all', to: 'admin#home'
    get 'admin/sign_in', to: 'devise/sessions#new'
  end

  namespace :api do
    resource :pages, :projects, except: [:new, :edit]
  end
end
