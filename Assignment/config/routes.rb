Rails.application.routes.draw do
  resources :events
  resources :user_details
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'home#homeindex'
  get '/home' => 'home#index'
  get '/home/register' => 'home#signup'
  post 'home/register' => 'home#register'

  post 'home/login' => 'home#login'
  post '/home/login' => 'home#login'
  post 'home/contact' => 'home#homeindex'
  #home paths
  get '/home/homeindex' => 'home#homeindex'
  get '/home/index' => 'home#index'
  get '/home/about' => 'home#about'
  get '/home/myevents' => 'home#myevents'
  get '/home/allevents' => 'home#allevents'
  get '/home/contact' => 'home#contact'

  #userdetails path
  get '/user_detail/show' => 'userdetail#show'

  #eventsPath
  get '/events/myevents/1' => 'events#myevents'
  get '/events/myeventsNew/1' => 'events#myeventsNew'
  get '/events/myeventsView/1' => 'events#myeventsView'

end
