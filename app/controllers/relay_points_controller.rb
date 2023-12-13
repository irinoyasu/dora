class RelayPointsController < ApplicationController
  before_action :set_relay_point, only: %i[show edit update destroy]

  # GET /relay_points or /relay_points.json
  def index
    @relay_points = RelayPoint.all
  end

  # GET /relay_points/1 or /relay_points/1.json
  def show
  end

  # GET /relay_points/new
  def new
    @relay_point = RelayPoint.new
  end

  # GET /relay_points/1/edit
  def edit
  end

  # POST /relay_points or /relay_points.json
  def create
    @relay_point = RelayPoint.new(relay_point_params)

    respond_to do |format|
      if @relay_point.save
        format.html { redirect_to relay_point_url(@relay_point), notice: 'Relay point was successfully created.' }
        format.json { render :show, status: :created, location: @relay_point }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relay_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relay_points/1 or /relay_points/1.json
  def update
    respond_to do |format|
      if @relay_point.update(relay_point_params)
        format.html { redirect_to relay_point_url(@relay_point), notice: 'Relay point was successfully updated.' }
        format.json { render :show, status: :ok, location: @relay_point }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relay_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relay_points/1 or /relay_points/1.json
  def destroy
    @relay_point.destroy

    respond_to do |format|
      format.html { redirect_to relay_points_url, notice: 'Relay point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_relay_point
    @relay_point = RelayPoint.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def relay_point_params
    params.require(:relay_point).permit(:relay_point_id, :location, :capacity, :available_services, :contact_info)
  end
end
