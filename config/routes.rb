Rails.application.routes.draw do
  root "sessions#top"
  get "home/asmr_top" => "home#asmr_top"

  get "/favorite" => "home#favorite"

  get "home/sound_search" => "home#sound_search"

  post "home/search_list" => "home#search_list"

  get "home/search_list" => "home#search_response"

  post "sessions/create" => "sessions#create"

  post "sessions/login" => "sessions#login"
  
  get 'sessions/top' => "sessions#top"

  delete "/logout" => "sessions#destroy"

  # asmr検索用特殊ルート(耳かき、シャンプー、タッピング)
  get "home/head_spa" => "home#head_spa"
  get "home/ear_pick" => "home#ear_pick"
  get "home/typing" => "home#typing"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
