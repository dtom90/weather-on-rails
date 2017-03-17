Rails.application.routes.draw do
  get 'weather/home'

  get 'weather/current'

  get 'weather/forecast'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
