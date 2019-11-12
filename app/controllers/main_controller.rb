class MainController < ApplicationController
  layout 'application'

  def home
    @page_title = 'Home page'
  end

  def time
    @page_title = 'Current Time'
    @curr_time = Time.now.strftime('%Y-%m-%d %H:%M:%S')
  end
end
