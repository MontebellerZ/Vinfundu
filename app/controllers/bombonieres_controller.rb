class BombonieresController < ApplicationController
  before_action :set_bomboniere, only: [:show, :edit, :update, :destroy]

  # GET /bombonieres
  # GET /bombonieres.json
  def index
    @bombonieres = Bomboniere.all
  end

  # GET /bombonieres/1
  # GET /bombonieres/1.json
  def show
  end

  # GET /bombonieres/new
  def new
    @bomboniere = Bomboniere.new
  end

  # GET /bombonieres/1/edit
  def edit
  end

  # POST /bombonieres
  # POST /bombonieres.json
  def create
    @bomboniere = Bomboniere.new(bomboniere_params)

    respond_to do |format|
      if @bomboniere.save
        format.html { redirect_to @bomboniere, notice: 'Bomboniere was successfully created.' }
        format.json { render :show, status: :created, location: @bomboniere }
      else
        format.html { render :new }
        format.json { render json: @bomboniere.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bombonieres/1
  # PATCH/PUT /bombonieres/1.json
  def update
    respond_to do |format|
      if @bomboniere.update(bomboniere_params)
        format.html { redirect_to @bomboniere, notice: 'Bomboniere was successfully updated.' }
        format.json { render :show, status: :ok, location: @bomboniere }
      else
        format.html { render :edit }
        format.json { render json: @bomboniere.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bombonieres/1
  # DELETE /bombonieres/1.json
  def destroy
    @bomboniere.destroy
    respond_to do |format|
      format.html { redirect_to bombonieres_url, notice: 'Bomboniere was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bomboniere
      @bomboniere = Bomboniere.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bomboniere_params
      params.require(:bomboniere).permit(:cinema_id, :produto, :valor, :imagem, :limitado)
    end
end
