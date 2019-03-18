Rails.application.routes.draw do
  get 'pages/index'
  get 'home/top'
  get "home/asmr_top" => "home#asmr_top"
  root "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
