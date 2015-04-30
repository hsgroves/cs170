Rails.application.routes.draw do
  get 'classrooms_controller/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :classrooms, only: [:index, :show] do
    resources :presentations, only: [] do
      resources :grade_submissions, only: [:new, :create]
    end
  end

  root to: "classrooms#index"
end
