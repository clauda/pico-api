class BeachesController < ApplicationController

  def index
    @beaches = Beach.all
    render json: @beaches
  end

  def show
    @beach = Beach.find(params[:id])
  end

  def create
  end

end
