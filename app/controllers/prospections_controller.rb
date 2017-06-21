class ProspectionsController < ApplicationController
  before_action :set_prospection, only: [:show, :edit, :update, :destroy]

  # GET /prospections
  # GET /prospections.json
  def index
    @prospections = Prospection.all
  end

  # GET /prospections/1
  # GET /prospections/1.json
  def show
  end

  # GET /prospections/new
  def new
    @prospection = Prospection.new
  end

  # GET /prospections/1/edit
  def edit
  end

  # POST /prospections
  # POST /prospections.json
  def create
    @prospection = Prospection.new(prospection_params)

    respond_to do |format|
      if @prospection.save
        format.html { redirect_to @prospection, notice: 'Prospection was successfully created.' }
        format.json { render :show, status: :created, location: @prospection }
      else
        format.html { render :new }
        format.json { render json: @prospection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prospections/1
  # PATCH/PUT /prospections/1.json
  def update
    respond_to do |format|
      if @prospection.update(prospection_params)
        format.html { redirect_to @prospection, notice: 'Prospection was successfully updated.' }
        format.json { render :show, status: :ok, location: @prospection }
      else
        format.html { render :edit }
        format.json { render json: @prospection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prospections/1
  # DELETE /prospections/1.json
  def destroy
    @prospection.destroy
    respond_to do |format|
      format.html { redirect_to prospections_url, notice: 'Prospection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospection
      @prospection = Prospection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospection_params
      params.require(:prospection).permit(:customer_id, :product_id, :value)
    end
end
