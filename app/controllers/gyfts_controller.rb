class GyftsController < ApplicationController
  before_action :set_gyft, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @gyfts = Gyft.all
  end

  def show
  end

  def new
    @gyft = current_user.gyfts.build
  end

  def edit
  end

  def create
    @gyft = current_user.gyfts.build(gyft_params)

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

  def destroy
    @gyft.destroy
    respond_to do |format|
      format.html { redirect_to gyfts_url, notice: 'Gyft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def correct_user
      @gyft = current_user.gyfts.find_by(id: params[:id])
      redirect_to pins_path, notice: "Not Authorized!" if @gyft.nil?
    end

    def set_gyft
      @gyft = Gyft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gyft_params
      params.require(:gyft).permit(:name, :description, :desire, :price, :image)
    end
end
