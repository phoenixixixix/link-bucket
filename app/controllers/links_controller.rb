class LinksController < ApplicationController
  before_action :set_link, only: [:show, :destroy]

  # GET /links/1
  def show
  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # POST /links
  def create
    @link = Link.new(link_params)

    if @link.save
      redirect_to @link, notice: 'Link was successfully created.'
    else
      render :new
    end
  end

  # DELETE /links/1
  def destroy
    @link.destroy
    redirect_to links_url, notice: 'Link was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_link
    @link = Link.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def link_params
    params.require(:link).permit(:url_str, :description)
  end
end
