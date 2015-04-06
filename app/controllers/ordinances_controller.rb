class OrdinancesController < ApplicationController
  before_action :set_ordinance, only: [:show, :edit, :update, :destroy]
  before_action :set_sender
  before_action :set_ancestor

  # GET /ordinances
  # GET /ordinances.json
  def index
    @ordinances = @ancestor.ordinances
  end

  # GET /ordinances/1
  # GET /ordinances/1.json
  def show
  end

  # GET /ordinances/new
  def new
    @ordinance = @ancestor.ordinances.new
  end

  # GET /ordinances/1/edit
  def edit
  end

  # POST /ordinances
  # POST /ordinances.json
  def create
    @ordinance = @ancestor.ordinances.new(ordinance_params)

    respond_to do |format|
      if @ordinance.save
        format.html { redirect_to sender_ancestors_path(@sender), notice: 'Ordinance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ordinance }
      else
        format.html { render action: 'new' }
        format.json { render json: @ordinance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordinances/1
  # PATCH/PUT /ordinances/1.json
  def update
    respond_to do |format|
      if @ordinance.update(ordinance_params)
        format.html { redirect_to sender_ancestors_path(@sender), notice: 'Ordinance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ordinance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordinances/1
  # DELETE /ordinances/1.json
  def destroy
    @ordinance.destroy
    respond_to do |format|
      format.html { redirect_to ordinances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordinance
      @ordinance = Ordinance.find(params[:id])
    end
  
    def set_sender
      @sender = Sender.find(params[:sender_id])
    end

    def set_ancestor
      @ancestor = Ancestor.find(params[:ancestor_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordinance_params
      params.require(:ordinance).permit(:performed_in, :ordinance_type_id)
    end
end
