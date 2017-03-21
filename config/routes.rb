Rails.application.routes.draw do
  root 'weather#home'

  get 'current', to: 'weather#current'
  get 'forecast', to: 'weather#forecast'
end
