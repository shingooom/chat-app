Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # ↑↑上の記述は削除しましょう↑↑
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end