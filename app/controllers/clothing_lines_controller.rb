class ClothingLinesController < ApplicationController
  before_action :set_clothing_line, only: [:show, :edit, :update, :destroy]

  # GET /clothing_lines
  # GET /clothing_lines.json
  def index
    @clothing_lines = ClothingLine.all
  end

  # GET /clothing_lines/1
  # GET /clothing_lines/1.json
  def show
  end

  # GET /clothing_lines/new
  def new
    @clothing_line = ClothingLine.new
  end

  # GET /clothing_lines/1/edit
  def edit
  end

  # POST /clothing_lines
  # POST /clothing_lines.json
  def create
    @clothing_line = ClothingLine.new(clothing_line_params)

    respond_to do |format|
      if @clothing_line.save
        format.html { redirect_to @clothing_line, notice: 'Clothing line was successfully created.' }
        format.json { render :show, status: :created, location: @clothing_line }
      else
        format.html { render :new }
        format.json { render json: @clothing_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clothing_lines/1
  # PATCH/PUT /clothing_lines/1.json
  def update
    respond_to do |format|
      if @clothing_line.update(clothing_line_params)
        format.html { redirect_to @clothing_line, notice: 'Clothing line was successfully updated.' }
        format.json { render :show, status: :ok, location: @clothing_line }
      else
        format.html { render :edit }
        format.json { render json: @clothing_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothing_lines/1
  # DELETE /clothing_lines/1.json
  def destroy
    @clothing_line.destroy
    respond_to do |format|
      format.html { redirect_to clothing_lines_url, notice: 'Clothing line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clothing_line
      @clothing_line = ClothingLine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clothing_line_params
      params.require(:clothing_line).permit(:name, :tag_line, :description, :user_id)
    end
end
