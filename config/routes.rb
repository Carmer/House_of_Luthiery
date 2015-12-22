Rails.application.routes.draw do
  root to: "home#home"

  get "/about",                   to: "home#about",             as: :about
  get "/research",                to: "home#research",          as: :research
  get "/home",                    to: "home#home",              as: :home

  get "/instruments",             to: "instruments#index",      as: :instruments
  get "/instruments/:model",      to: "instruments#show",       as: :instrument
  get "/contact",                 to: "home#contact",           as: :contact
  post "contact-email",           to: "home#contact_email",     as: :create_contact_email

  post "admin/instruments",         to: "admin/instruments#create", as: :admin_instruments
  get "admin/instruments/new",         to: "admin/instruments#new", as: :new_admin_instrument
  patch "/admin/instruments/:name",  to: "admin/instruments#update", as: :update_admin_instrument
  get "/admin/instruments/:name/edit",  to: "admin/instruments#edit", as: :edit_admin_instrument
end
