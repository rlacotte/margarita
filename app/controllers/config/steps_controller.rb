class Config::StepsController < ApplicationController
  before_action :set_config_step, only: [:show, :edit, :update, :destroy]

  # GET /config/steps
  # GET /config/steps.json
  def index
    @config_steps = Config::Step.all
  end

  # GET /config/steps/1
  # GET /config/steps/1.json
  def show
  end

  # GET /config/steps/new
  def new
    @config_step = Config::Step.new
  end

  # GET /config/steps/1/edit
  def edit
  end

  # POST /config/steps
  # POST /config/steps.json
  def create
    @config_step = Config::Step.new(config_step_params)

    respond_to do |format|
      if @config_step.save
        format.html { redirect_to @config_step, notice: 'Step was successfully created.' }
        format.json { render :show, status: :created, location: @config_step }
      else
        format.html { render :new }
        format.json { render json: @config_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /config/steps/1
  # PATCH/PUT /config/steps/1.json
  def update
    respond_to do |format|
      if @config_step.update(config_step_params)
        format.html { redirect_to @config_step, notice: 'Step was successfully updated.' }
        format.json { render :show, status: :ok, location: @config_step }
      else
        format.html { render :edit }
        format.json { render json: @config_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /config/steps/1
  # DELETE /config/steps/1.json
  def destroy
    @config_step.destroy
    respond_to do |format|
      format.html { redirect_to config_steps_url, notice: 'Step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_config_step
      @config_step = Config::Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def config_step_params
      params.require(:config_step).permit(:step_name)
    end
end
