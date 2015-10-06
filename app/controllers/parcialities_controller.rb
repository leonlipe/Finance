class ParcialitiesController < ApplicationController
  before_action :set_parciality, only: [:show, :edit, :update, :destroy]

  # GET /parcialities
  # GET /parcialities.json
  def index
    @parcialities = Parciality.all
  end

  # GET /parcialities/1
  # GET /parcialities/1.json
  def show
  end

  # GET /parcialities/new
  def new
    @parciality = Parciality.new
  end

  # GET /parcialities/1/edit
  def edit
  end

  # POST /parcialities
  # POST /parcialities.json
  def create
    @parciality = Parciality.new(parciality_params)

    respond_to do |format|
      if @parciality.save
        format.html { redirect_to @parciality, notice: 'Parciality was successfully created.' }
        format.json { render :show, status: :created, location: @parciality }
      else
        format.html { render :new }
        format.json { render json: @parciality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parcialities/1
  # PATCH/PUT /parcialities/1.json
  def update
    respond_to do |format|
      if @parciality.update(parciality_params)
        format.html { redirect_to @parciality, notice: 'Parciality was successfully updated.' }
        format.json { render :show, status: :ok, location: @parciality }
      else
        format.html { render :edit }
        format.json { render json: @parciality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parcialities/1
  # DELETE /parcialities/1.json
  def destroy
    @parciality.destroy
    respond_to do |format|
      format.html { redirect_to parcialities_url, notice: 'Parciality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parciality
      @parciality = Parciality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parciality_params
      params.require(:parciality).permit(:description, :with_interest, :total_aamount, :date_start, :same_day_charge, :last_payment, :total_months, :account_id, :notes)
    end
end
