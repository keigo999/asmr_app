Rails.application.routes.draw do
  root "home#top"
  get 'pages/index'
  get 'home/top'
  get "home/asmr_top" => "home#asmr_top"
  get "home/sound_search" => "home#sound_search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
