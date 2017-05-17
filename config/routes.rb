Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'spaces#index'

  resources :users, only: [:edit, :update]

  #オーナー用ダッシュボードトップ
  get 'owners/:user_id/dashboard'  =>  'owner_dashboards#index'

end
