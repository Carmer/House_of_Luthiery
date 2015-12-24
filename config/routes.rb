Rails.application.routes.draw do
  match "/404" => "errors#error404", via: [ :get, :post, :patch, :delete ]
  root to: "home#home"

  get "/about",                   to: "home#about",             as: :about
  get "/research",                to: "home#research",          as: :research
  get "/home",                    to: "home#home",              as: :home

  get "/instruments",             to: "instruments#index",      as: :instruments
  get "/instruments/new",         to: "admin/instruments#new",  as: :new_instrument
  get "/instruments/:slug",       to: "instruments#show",       as: :instrument
  get "/contact",                 to: "home#contact",           as: :contact
  get "/contact-us",              to: "home#contact_us",        as: :contact_us
  post "/contact-email",          to: "home#contact_email",     as: :create_contact_email

  post "/instruments",            to: "admin/instruments#create", as: :admin_instruments
  patch "/instruments/:slug",     to: "admin/instruments#update", as: :update_admin_instrument
  get "/instruments/:slug/edit",  to: "admin/instruments#edit",   as: :edit_admin_instrument
  get "/admin/login",             to: "session#new",              as: :new_login
  post "/admin/login",            to: "session#create",           as: :login
  get "/admin/dashboard",         to: "admin#dashboard",          as: :admin_dashboard
end
