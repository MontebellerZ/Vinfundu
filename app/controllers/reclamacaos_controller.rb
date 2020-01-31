class ReclamacaosController < ApplicationController
  before_action :set_reclamacao, only: [:show, :edit, :update, :destroy]

  # GET /reclamacaos
  # GET /reclamacaos.json
  def index
    @reclamacaos = Reclamacao.all
  end

  # GET /reclamacaos/1
  # GET /reclamacaos/1.json
  def show
  end

  # GET /reclamacaos/new
  def new
    @reclamacao = Reclamacao.new
  end

  # GET /reclamacaos/1/edit
  def edit
  end

  # POST /reclamacaos
  # POST /reclamacaos.json
  def create
    @reclamacao = Reclamacao.new(reclamacao_params)

    respond_to do |format|
      if @reclamacao.save
        format.html { redirect_to talk_path, notice: 'Sua mensagem foi enviada com sucesso!' }
        format.json { render :show, status: :created, location: @reclamacao }
      else
        format.html { redirect_to talk_path, notice: 'Houve algum erro ao enviar sua mensagem. Tente novamente (Se o erro persistir, envie-nos um email).' }
        format.json { render json: @reclamacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reclamacaos/1
  # PATCH/PUT /reclamacaos/1.json
  def update
    respond_to do |format|
      if @reclamacao.update(reclamacao_params)
        format.html { redirect_to @reclamacao, notice: 'Reclamacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @reclamacao }
      else
        format.html { render :edit }
        format.json { render json: @reclamacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reclamacaos/1
  # DELETE /reclamacaos/1.json
  def destroy
    @reclamacao.destroy
    respond_to do |format|
      format.html { redirect_to reclamacaos_url, notice: 'Reclamacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reclamacao
      @reclamacao = Reclamacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reclamacao_params
      params.require(:reclamacao).permit(:nome, :email, :cinema_id, :mensagem)
    end
end
