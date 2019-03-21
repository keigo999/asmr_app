Rails.application.routes.draw do
  root "home#top"
  get 'home/top'
  get "home/asmr_top" => "home#asmr_top"
  get "home/sound_search" => "home#sound_search"
  post "home/search_list" => "home#search_list"
  post "home/create" => "home#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
