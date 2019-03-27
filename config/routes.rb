Rails.application.routes.draw do
  root "sessions#top"
  get 'rakuten/product'
  get "home/asmr_top" => "home#asmr_top"

  get "/favorite" => "home#favorite"

  get "/sound_search" => "home#sound_search"

  post "home/search_list" => "home#search_list"

  get "home/search_list" => "home#search_response"

  post "sessions/create" => "sessions#create"

  post "sessions/login" => "sessions#login"
  
  get 'sessions/top' => "sessions#top"

  delete "/logout" => "sessions#destroy"

  # asmr検索用特殊ルート(耳かき、シャンプー、タッピング)
  get "/head_spa" => "home#head_spa"
  get "/ear_pick" => "home#ear_pick"
  get "/typing" => "home#typing"
  get "/random" => "home#random"

  # 商品紹介ページ
  get "rakuten/items" => "rakuten#items_search"

  # 運営おすすめ商品
  get "/eye_mask" => "rakuten#eye"
  get "/ear" => "rakuten#ear"
  get "/aroma" => "rakuten#aroma"
  get "/query" =>"rakuten#search_rakuten"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # reviewアーティストルート
  get "/ppomo" => "reviews#ppomo"
  get "/hatomugi" => "reviews#hatomugi"
  get "/cham" => "reviews#cham"
  get "/muki" => "reviews#muki"
  get "/umino" => "reviews#umino"
  get "/jae" => "reviews#jae"
  post "reviews/create" => "reviews#create"

  #クレジットカードルート
  get "/pay" => "reviews#pay"
  post "/pay" => "reviews#purchase"

  # アーティスト応援メッセージ
  get 'reviews/edit' => "reviews#edit"
  get "/hatomugi_share" => "reviews#hatomugi_share"
  get "/cham_share" => "reviews#cham_share"
  get "/muki_share" => "reviews#muki_share"
  get "/umino_share" => "reviews#umino_share"
  get "/jae_share" => "reviews#jae_share"

end
