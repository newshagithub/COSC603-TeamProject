class SitemapController < ApplicationController
  respond_to :xml
  def index
    @courses = Course.order("created_at DESC")
  end
end
