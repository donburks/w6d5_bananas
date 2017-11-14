class PlantainsController < ApplicationController
  before_action :set_plantain, only: [:show, :edit, :update, :destroy]

  # GET /plantains
  # GET /plantains.json
  def index
    @plantains = Plantain.all
  end

  # GET /plantains/1
  # GET /plantains/1.json
  def show
  end

  # GET /plantains/new
  def new
    @plantain = Plantain.new
  end

  # GET /plantains/1/edit
  def edit
  end

  # POST /plantains
  # POST /plantains.json
  def create
    @plantain = Plantain.new(plantain_params)

    respond_to do |format|
      if @plantain.save
        format.html { redirect_to @plantain, notice: 'Plantain was successfully created.' }
        format.json { render :show, status: :created, location: @plantain }
      else
        format.html { render :new }
        format.json { render json: @plantain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plantains/1
  # PATCH/PUT /plantains/1.json
  def update
    respond_to do |format|
      if @plantain.update(plantain_params)
        format.html { redirect_to @plantain, notice: 'Plantain was successfully updated.' }
        format.json { render :show, status: :ok, location: @plantain }
      else
        format.html { render :edit }
        format.json { render json: @plantain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantains/1
  # DELETE /plantains/1.json
  def destroy
    @plantain.destroy
    respond_to do |format|
      format.html { redirect_to plantains_url, notice: 'Plantain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plantain
      @plantain = Plantain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plantain_params
      params.require(:plantain).permit(:name, :size, :admin, :expiry)
    end
end
