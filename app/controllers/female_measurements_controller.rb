class FemaleMeasurementsController < ApplicationController
  before_action :set_female_measurement, only: [:show, :edit, :update, :destroy]

  # GET /female_measurements
  # GET /female_measurements.json
  def index
    @female_measurements = FemaleMeasurement.all
  end

  # GET /female_measurements/1
  # GET /female_measurements/1.json
  def show
  end

  # GET /female_measurements/new
  def new
    @female_measurement = FemaleMeasurement.new
  end

  # GET /female_measurements/1/edit
  def edit
  end

  # POST /female_measurements
  # POST /female_measurements.json
  def create
    @female_measurement = FemaleMeasurement.new(female_measurement_params)

    respond_to do |format|
      if @female_measurement.save
        format.html { redirect_to @female_measurement, notice: 'Female measurement was successfully created.' }
        format.json { render :show, status: :created, location: @female_measurement }
      else
        format.html { render :new }
        format.json { render json: @female_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /female_measurements/1
  # PATCH/PUT /female_measurements/1.json
  def update
    respond_to do |format|
      if @female_measurement.update(female_measurement_params)
        format.html { redirect_to @female_measurement, notice: 'Female measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @female_measurement }
      else
        format.html { render :edit }
        format.json { render json: @female_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female_measurements/1
  # DELETE /female_measurements/1.json
  def destroy
    @female_measurement.destroy
    respond_to do |format|
      format.html { redirect_to female_measurements_url, notice: 'Female measurement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female_measurement
      @female_measurement = FemaleMeasurement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def female_measurement_params
      params.require(:female_measurement).permit(:bust, :waist, :hip, :back_waist, :crotch, :arm_width, :arm_length, :height, :back, :trouser_length, :apex_to_apex, :shoulder_to_apex, :note, :user_id)
    end
end
