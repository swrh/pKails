class ProposalStatusesController < ApplicationController
  before_action :set_proposal_status, only: [:show, :edit, :update, :destroy]

  # GET /proposal_statuses
  # GET /proposal_statuses.json
  def index
    @proposal_statuses = ProposalStatus.all
  end

  # GET /proposal_statuses/1
  # GET /proposal_statuses/1.json
  def show
  end

  # GET /proposal_statuses/new
  def new
    @proposal_status = ProposalStatus.new
  end

  # GET /proposal_statuses/1/edit
  def edit
  end

  # POST /proposal_statuses
  # POST /proposal_statuses.json
  def create
    @proposal_status = ProposalStatus.new(proposal_status_params)

    respond_to do |format|
      if @proposal_status.save
        format.html { redirect_to @proposal_status, notice: 'Proposal status was successfully created.' }
        format.json { render :show, status: :created, location: @proposal_status }
      else
        format.html { render :new }
        format.json { render json: @proposal_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposal_statuses/1
  # PATCH/PUT /proposal_statuses/1.json
  def update
    respond_to do |format|
      if @proposal_status.update(proposal_status_params)
        format.html { redirect_to @proposal_status, notice: 'Proposal status was successfully updated.' }
        format.json { render :show, status: :ok, location: @proposal_status }
      else
        format.html { render :edit }
        format.json { render json: @proposal_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposal_statuses/1
  # DELETE /proposal_statuses/1.json
  def destroy
    @proposal_status.destroy
    respond_to do |format|
      format.html { redirect_to proposal_statuses_url, notice: 'Proposal status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposal_status
      @proposal_status = ProposalStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposal_status_params
      params.require(:proposal_status).permit(:name, :finish)
    end
end
