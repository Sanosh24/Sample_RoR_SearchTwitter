Rails.application.routes.draw do
  
  get '/home' => 'twitter#home'
  get '/search' => 'twitter#search'
  root to: 'twitter#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
