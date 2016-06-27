class SearchesController < ApplicationController
  # before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  def index
    @search = Search.new
    @searches = Search.all
  end

  def create
    @search = Search.new(search_params)
    if @search.save
      redirect_to :back, notice: 'Search was successfully created.'
    else
      render :index, notice: 'Search was unsuccessfully created.'
    end
  end
  private

  def search_params
    params.require(:search).permit(:name)
  end
end
