Rails.application.routes.draw do
  resources :posts
	
	localized do
    root 'pages#home'

    resources :page_groups, path: :pages do
      resources :pages, path: '', except: [:index]
    end

    get '/contact', to: 'contacts#new', as: :contacts
    post '/contact', to: 'contacts#create', as: :contacts
	end

  resources :contact, only: [:new, :create]

	ActiveAdmin.routes(self)
	devise_for :admin_users, ActiveAdmin::Devise.config
end
