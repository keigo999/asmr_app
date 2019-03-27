module HomeHelper
  
  def search(query)
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = "AIzaSyASrJQl-AjvuIQ4nS9w9fbXOie9M0Lc4nM"
    max_results = 10
    youtube_search_list = youtube.list_searches("id,snippet", type: "video", q: query, max_results: max_results)
    url = youtube_search_list.to_h

    max_results.times do |i|
      instance_variable_set('@url' + i.to_s, url[:items][i][:id][:video_id])
      instance_variable_set('@image' + i.to_s, url[:items][i][:snippet][:thumbnails][:default][:url])
      instance_variable_set('@title' + i.to_s, url[:items][i][:snippet][:title])
    end
  end

  def search_only(query)
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = "AIzaSyASrJQl-AjvuIQ4nS9w9fbXOie9M0Lc4nM"
    max_results = 1
    youtube_search_list = youtube.list_searches("id,snippet", type: "video", q: query, max_results: max_results)
    url = youtube_search_list.to_h

    max_results.times do |i|
      instance_variable_set('@url' + i.to_s, url[:items][i][:id][:video_id])
      instance_variable_set('@image' + i.to_s, url[:items][i][:snippet][:thumbnails][:default][:url])
      instance_variable_set('@title' + i.to_s, url[:items][i][:snippet][:title])
    end
  end
end

