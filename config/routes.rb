Rails.application.routes.draw do
  root to: "home#home"

  get "/about",            to: "home#about",                   as: :about
  get "/research",         to: "home#research",                as: :research
  get "/custom-shop",      to: "instruments#custom_shop",      as: :custom_shop
  get "/signature-models", to: "instruments#signature_models", as: :signature_models
  get "/home",             to: "home#home",                    as: :home


  get "/signature-models/:model", to: "instruments#show",       as: :signature_model
  get "/custom-shop/:model",      to: "instruments#show",       as: :custom_model
  get "/contact",                 to: "home#contact",           as: :contact
end
