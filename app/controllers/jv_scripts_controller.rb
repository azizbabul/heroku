class JvScriptsController < ApplicationController
  before_action :set_jv_script, only: [:show, :edit, :update, :destroy]

  # GET /jv_scripts
  # GET /jv_scripts.json
  def index
    @jv_scripts = JvScript.all
  end

  # GET /jv_scripts/1
  # GET /jv_scripts/1.json
  def show
  end

  # GET /jv_scripts/new
  def new
    @jv_script = JvScript.new
  end

  # GET /jv_scripts/1/edit
  def edit
  end

  # POST /jv_scripts
  # POST /jv_scripts.json
  def create
    @jv_script = JvScript.new(jv_script_params)

    respond_to do |format|
      if @jv_script.save
        format.html { redirect_to @jv_script, notice: 'Jv script was successfully created.' }
        format.json { render :show, status: :created, location: @jv_script }
      else
        format.html { render :new }
        format.json { render json: @jv_script.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jv_scripts/1
  # PATCH/PUT /jv_scripts/1.json
  def update
    respond_to do |format|
      if @jv_script.update(jv_script_params)
        format.html { redirect_to @jv_script, notice: 'Jv script was successfully updated.' }
        format.json { render :show, status: :ok, location: @jv_script }
      else
        format.html { render :edit }
        format.json { render json: @jv_script.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jv_scripts/1
  # DELETE /jv_scripts/1.json
  def destroy
    @jv_script.destroy
    respond_to do |format|
      format.html { redirect_to jv_scripts_url, notice: 'Jv script was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jv_script
      @jv_script = JvScript.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jv_script_params
      params.require(:jv_script).permit(:depo, :withd, :bal)
    end
end
