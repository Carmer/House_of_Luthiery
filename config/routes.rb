Rails.application.routes.draw do
  root to: "home#front_page"

  get "/about", to: "home#about", as: :about
end
