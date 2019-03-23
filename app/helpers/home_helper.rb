module HomeHelper
  
  def search(query)
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = "AIzaSyASrJQl-AjvuIQ4nS9w9fbXOie9M0Lc4nM"
    max_results = 2
    youtube_search_list = youtube.list_searches("id,snippet", type: "video", q: query, max_results: max_results)
    url = youtube_search_list.to_h

    max_results.times do |i|
      instance_variable_set('@url' + i.to_s, url[:items][i][:id][:video_id])
      instance_variable_set('@image' + i.to_s, url[:items][i][:snippet][:thumbnails][:default][:url])
      instance_variable_set('@title' + i.to_s, url[:items][i][:snippet][:title])
      instance_variable_set('@c_title' + i.to_s, url[:items][i][:channelTitle])
      instance_variable_set('@c_id' + i.to_s, url[:items][i][:snippet][:channelId])

      p @c_title0
      p @c_id0
    end
  end
end

# "items": [
#   {
#     "kind": "youtube#searchResult",
#     "etag": "\"XpPGQXPnxQJhLgs6enD_n8JR4Qk/eyjHmA2389iY8uTlCfV756tKdlM\"",
#     "id": {
#       "kind": "youtube#video",
#       "videoId": "KNQOrOYRlic"
#     },
#     "snippet": {
#       "publishedAt": "2019-03-21T09:00:00.000Z",
#       "channelId": "UCPVr7clenPjpD7WNsSI3UBQ",
#       "title": "黒歴史になったプレミアゲーム『GB版 バイオハザード外伝』",
#       "description": "謎の戦闘システムとひげのおっさん。 ゲームボーイカラーのBIOHAZARD GAIDEN チャンネル登録よろしくどうぞ！⇒http://goo.gl/OZrD3u 【コメント＆高評...",
#       "thumbnails": {
#         "default": {
#           "url": "https://i.ytimg.com/vi/KNQOrOYRlic/default.jpg",
#           "width": 120,
#           "height": 90
#         },
#         "medium": {
#           "url": "https://i.ytimg.com/vi/KNQOrOYRlic/mqdefault.jpg",
#           "width": 320,
#           "height": 180
#         },
#         "high": {
#           "url": "https://i.ytimg.com/vi/KNQOrOYRlic/hqdefault.jpg",
#           "width": 480,
#           "height": 360
#         }
#       },
#       "channelTitle": "レトルト",
#       "liveBroadcastContent": "none"
#     }
#   },
#   {
#    "kind": "youtube#searchResult",
#    "etag": "\"XpPGQXPnxQJhLgs6enD_n8JR4Qk/yasbY4H_AYBOHATLUGOdLNUKFfc\"",
#    "id": {
#     "kind": "youtube#video",
#     "videoId": "sccSYTpnoJs"
#    },
#    "snippet": {
#     "publishedAt": "2019-03-20T09:00:06.000Z",
#     "channelId": "UCPVr7clenPjpD7WNsSI3UBQ",
#     "title": "ついに発表出来ます！！！！！",
#     "description": "３つもお見せできる！！ チャンネル登録よろしくどうぞ！⇒ http://goo.gl/OZrD3u 【コメント＆高評価頂けると嬉しいです】 ◇レトルトツイッター...",
#     "thumbnails": {
#      "default": {
#       "url": "https://i.ytimg.com/vi/sccSYTpnoJs/default.jpg",
#       "width": 120,
#       "height": 90
#      },
#      "medium": {
#       "url": "https://i.ytimg.com/vi/sccSYTpnoJs/mqdefault.jpg",
#       "width": 320,
#       "height": 180
#      },
#      "high": {
#       "url": "https://i.ytimg.com/vi/sccSYTpnoJs/hqdefault.jpg",
#       "width": 480,
#       "height": 360
#      }
#     },
#     "channelTitle": "レトルト",
#     "liveBroadcastContent": "none"
#    }
#   }