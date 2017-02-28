class SiteController < ApplicationController

  def index
    @links = Link.where(created_at: (Time.now - 1.day)..Time.now)
  end

end
