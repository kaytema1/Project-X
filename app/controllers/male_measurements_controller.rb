class MaleMeasurementsController < ApplicationController
  before_action :set_male_measurement, only: [:show, :edit, :update, :destroy]

  # GET /male_measurements
  # GET /male_measurements.json
  def index
    @male_measurements = MaleMeasurement.all
  end

  # GET /male_measurements/1
  # GET /male_measurements/1.json
  def show
  end

  # GET /male_measurements/new
  def new
    @male_measurement = MaleMeasurement.new
  end

  # GET /male_measurements/1/edit
  def edit
  end

  # POST /male_measurements
  # POST /male_measurements.json
  def create
    @male_measurement = MaleMeasurement.new(male_measurement_params)

    respond_to do |format|
      if @male_measurement.save
        format.html { redirect_to @male_measurement, notice: 'Male measurement was successfully created.' }
        format.json { render :show, status: :created, location: @male_measurement }
      else
        format.html { render :new }
        format.json { render json: @male_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /male_measurements/1
  # PATCH/PUT /male_measurements/1.json
  def update
    respond_to do |format|
      if @male_measurement.update(male_measurement_params)
        format.html { redirect_to @male_measurement, notice: 'Male measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @male_measurement }
      else
        format.html { render :edit }
        format.json { render json: @male_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_measurements/1
  # DELETE /male_measurements/1.json
  def destroy
    @male_measurement.destroy
    respond_to do |format|
      format.html { redirect_to male_measurements_url, notice: 'Male measurement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_measurement
      @male_measurement = MaleMeasurement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def male_measurement_params
      params.require(:male_measurement).permit(:back_width, :arm_circumference, :arm_length, :chest_width, :hip, :hip_length, :waist, :tie, :knee, :around_ankle_bar, :length, :note, :user_id)
    end
end
