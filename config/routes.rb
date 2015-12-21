Rails.application.routes.draw do
  root to: "home#home"

  get "/about",                   to: "home#about",             as: :about
  get "/research",                to: "home#research",          as: :research
  get "/home",                    to: "home#home",              as: :home

  get "/instruments",             to: "instruments#index",      as: :instruments
  get "/instruments/:model",      to: "instruments#show",       as: :instrument
  get "/contact",                 to: "home#contact",           as: :contact
  post "contact-email",           to: "home#contact_email",     as: :create_contact_email
end
