Rails.application.routes.draw do
  root 'pages#home'
	
	localized do
		resources :pages
	end

	ActiveAdmin.routes(self)
	devise_for :admin_users, ActiveAdmin::Devise.config
end
