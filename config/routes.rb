Rails.application.routes.draw do
  resources :pages
  devise_for :admins, skip: [:registrations]
  
  root "pages#main"

  scope module: 'pages' do
    get 'about'
    get 'comics'
    get 'other'
    get 'illustrations'
  end

  get 'work/:permalink', to: 'pages#work'

  devise_scope :admin do
    get 'admin/sign_in', to: 'devise/sessions#new'
    get 'admin', to: redirect('/admin/')
    get 'admin/*all', to: 'admin#home'
  end

  resource :projects

  namespace :api do
    resources :pages, :projects, except: [:new, :edit]
  end
end
