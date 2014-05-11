class GyftsController < ApplicationController
  before_action :set_gyft, only: [:show, :edit, :update, :destroy]

  # GET /gyfts
  # GET /gyfts.json
  def index
    @gyfts = Gyft.all
  end

  # GET /gyfts/1
  # GET /gyfts/1.json
  def show
  end

  # GET /gyfts/new
  def new
    @gyft = Gyft.new
  end

  # GET /gyfts/1/edit
  def edit
  end

  # POST /gyfts
  # POST /gyfts.json
  def create
    @gyft = Gyft.new(gyft_params)

    respond_to do |format|
      if @gyft.save
        format.html { redirect_to @gyft, notice: 'Gyft was successfully created.' }
        format.json { render :show, status: :created, location: @gyft }
      else
        format.html { render :new }
        format.json { render json: @gyft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gyfts/1
  # PATCH/PUT /gyfts/1.json
  def update
    respond_to do |format|
      if @gyft.update(gyft_params)
        format.html { redirect_to @gyft, notice: 'Gyft was successfully updated.' }
        format.json { render :show, status: :ok, location: @gyft }
      else
        format.html { render :edit }
        format.json { render json: @gyft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gyfts/1
  # DELETE /gyfts/1.json
  def destroy
    @gyft.destroy
    respond_to do |format|
      format.html { redirect_to gyfts_url, notice: 'Gyft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gyft
      @gyft = Gyft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gyft_params
      params.require(:gyft).permit(:name, :description, :desire, :price)
    end
end
