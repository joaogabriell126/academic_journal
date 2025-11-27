Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  get "articles", to: "pages#articles"
  get "login", to: "pages#admin_login"
  root "pages#index"
end
