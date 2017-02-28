class Api::V1::LinksController < ApplicationController

  def create
    # binding.pry
    @link = Link.new(link_params)
    if @link.save
      render json: @link
    end
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end

end
