module HomeHelper
  
  def search
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = "AIzaSyASrJQl-AjvuIQ4nS9w9fbXOie9M0Lc4nM"
    youtube_search_list = youtube.list_searches("id,snippet", type: "video", q: "@query", max_results: 1)
    url = youtube_search_list.to_h
    @url = url[:items][0][:id][:video_id]
    @image = url[:items][0][:snippet][:thumbnails][:default][:url]
    @title = url[:items][0][:snippet][:title]
  end
end

