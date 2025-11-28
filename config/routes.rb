Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :articles

  get "arcevo", to: "pages#arcevo"
  get "login", to: "pages#admin_login"
  root "pages#home"
end
