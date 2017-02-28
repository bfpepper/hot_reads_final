class SiteController < ApplicationController

  def index
    @links = Link.where(created_at: (Time.now - 1.day)..Time.now).group(:url).order("count_id DESC").count("id")
  end

end
