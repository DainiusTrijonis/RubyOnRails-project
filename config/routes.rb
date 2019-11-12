Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#home'

  get 'bitcoin', to: 'bitcoin#bitcoin'
  get 'time', to: 'main#time'
  get 'youtube', to: 'youtube#youtube'
end
