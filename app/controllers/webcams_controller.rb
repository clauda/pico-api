class WebcamsController < ApplicationController
  before_action :set_webcam, only: [ :show, :update, :destroy ]
  before_action :authenticate_user!, only: [ :create, :update, :destroy ]
  before_action :require_admin, only: [ :create, :update, :destroy ]

  # GET /webcams
  def index
    @webcams = Webcam.all

    render json: @webcams
  end

  # GET /webcams/1
  def show
    render json: @webcam
  end

  # POST /webcams
  def create
    @webcam = Webcam.new(webcam_params)

    if @webcam.save
      render json: @webcam, status: :created, location: @webcam
    else
      render json: @webcam.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /webcams/1
  def update
    if @webcam.update(webcam_params)
      render json: @webcam
    else
      render json: @webcam.errors, status: :unprocessable_entity
    end
  end

  # DELETE /webcams/1
  def destroy
    @webcam.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webcam
      @webcam = Webcam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def webcam_params
      params.require(:webcam).permit(:name, :description, :short_name, :published, :views_counter, :latitude, :longitude, :code, :slug)
    end
end
