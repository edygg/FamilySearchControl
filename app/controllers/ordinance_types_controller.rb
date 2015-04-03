class OrdinanceTypesController < ApplicationController
  before_action :set_ordinance_type, only: [:show, :edit, :update, :destroy]

  # GET /ordinance_types
  # GET /ordinance_types.json
  def index
    @ordinance_types = OrdinanceType.all
  end

  # GET /ordinance_types/1
  # GET /ordinance_types/1.json
  def show
  end

  # GET /ordinance_types/new
  def new
    @ordinance_type = OrdinanceType.new
  end

  # GET /ordinance_types/1/edit
  def edit
  end

  # POST /ordinance_types
  # POST /ordinance_types.json
  def create
    @ordinance_type = OrdinanceType.new(ordinance_type_params)

    respond_to do |format|
      if @ordinance_type.save
        format.html { redirect_to @ordinance_type, notice: 'Ordinance type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ordinance_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @ordinance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordinance_types/1
  # PATCH/PUT /ordinance_types/1.json
  def update
    respond_to do |format|
      if @ordinance_type.update(ordinance_type_params)
        format.html { redirect_to @ordinance_type, notice: 'Ordinance type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ordinance_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordinance_types/1
  # DELETE /ordinance_types/1.json
  def destroy
    @ordinance_type.destroy
    respond_to do |format|
      format.html { redirect_to ordinance_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordinance_type
      @ordinance_type = OrdinanceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordinance_type_params
      params.require(:ordinance_type).permit(:name)
    end
end
