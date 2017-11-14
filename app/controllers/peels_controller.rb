class PeelsController < ApplicationController
  before_action :set_peel, only: [:show, :edit, :update, :destroy]

  # GET /peels
  # GET /peels.json
  def index
    @peels = Peel.all
  end

  # GET /peels/1
  # GET /peels/1.json
  def show
  end

  # GET /peels/new
  def new
    @peel = Peel.new
  end

  # GET /peels/1/edit
  def edit
  end

  # POST /peels
  # POST /peels.json
  def create
    @peel = Peel.new(peel_params)

    respond_to do |format|
      if @peel.save
        format.html { redirect_to @peel, notice: 'Peel was successfully created.' }
        format.json { render :show, status: :created, location: @peel }
      else
        format.html { render :new }
        format.json { render json: @peel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peels/1
  # PATCH/PUT /peels/1.json
  def update
    respond_to do |format|
      if @peel.update(peel_params)
        format.html { redirect_to @peel, notice: 'Peel was successfully updated.' }
        format.json { render :show, status: :ok, location: @peel }
      else
        format.html { render :edit }
        format.json { render json: @peel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peels/1
  # DELETE /peels/1.json
  def destroy
    @peel.destroy
    respond_to do |format|
      format.html { redirect_to peels_url, notice: 'Peel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peel
      @peel = Peel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peel_params
      params.require(:peel).permit(:pieces, :references)
    end
end
