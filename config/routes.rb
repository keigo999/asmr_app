Rails.application.routes.draw do
  root "sessions#top"
  get "home/asmr_top" => "home#asmr_top"

  get "home/sound_search" => "home#sound_search"

  post "home/search_list" => "home#search_list"

  post "sessions/create" => "sessions#create"

  post "sessions/login" => "sessions#login"
  
  get 'sessions/top' => "sessions#top"

  delete "/logout", => "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
