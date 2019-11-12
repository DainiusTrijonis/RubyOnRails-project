require 'open-uri'

class YoutubeController < ApplicationController
  layout 'application'

  before_action :get_video, only: [:youtube]

  def youtube
    @page_title = '#1 Trending Video in Lithuania'
  end

  private

  def get_video
    obj = JSON.load(open("https://www.googleapis.com/youtube/v3/videos?part=contentDetails&chart=mostPopular&regionCode=LT&key=AIzaSyDgflJvEqzHfOaosCAE2R-3DMkUMFgBk8Y"))
    @video = "https://www.youtube.com/embed/" + obj["items"][0]["id"]
  end

end
