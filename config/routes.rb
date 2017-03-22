Rails.application.routes.draw do
  get '/' => 'finder#index'

  get '/customers/alphabetized' => 'finder#alphabetized'

  get '/customers/missing_email' => 'finder#missing_email'

  root 'finder#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
