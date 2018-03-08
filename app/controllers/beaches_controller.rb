class BeachesController < ApplicationController
  before_action :authenticate_user!, only: [ :create ]
  before_action :require_admin, only: [ :create ]

  def index
    @beaches = Beach.all
    render json: BeachSerializer.new(@beaches).serialized_json
  end

  def show
    @beach = Beach.by_slug(params[:id])
    render json: BeachSerializer.new(@beach).serialized_json
  end

  def create
    @beach = Beach.new(beach_params)
    if @beach.save
      render json: BeachSerializer.new(@beach).serialized_json
    else
      render json: @beach.errors, status: :unprocessable_entity
    end
  end

  private

    def beach_params
      params.require(:beach).permit(:name, :city, :state, :slug)
    end

end
