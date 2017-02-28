class Api::V1::LinksController < ApplicationController
  respond_to :json

  def create
    binding.pry
    @link = Link.create(link_params)
    # if @link.save
      respond_with @link
    # end
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end

end
