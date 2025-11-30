Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :articles

  get "acervo", to: "pages#acervo"
  get "login", to: "login#admin_login"
  root "pages#home"
end
