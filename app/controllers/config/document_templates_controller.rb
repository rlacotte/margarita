class Config::DocumentTemplatesController < ApplicationController
  before_action :set_config_document_template, only: [:show, :edit, :update, :destroy]

  # GET /config/document_templates
  # GET /config/document_templates.json
  def index
    @config_document_templates = Config::DocumentTemplate.all
  end

  # GET /config/document_templates/1
  # GET /config/document_templates/1.json
  def show
  end

  # GET /config/document_templates/new
  def new
    @config_document_template = Config::DocumentTemplate.new
  end

  # GET /config/document_templates/1/edit
  def edit
  end

  # POST /config/document_templates
  # POST /config/document_templates.json
  def create
    @config_document_template = Config::DocumentTemplate.new(config_document_template_params)

    respond_to do |format|
      if @config_document_template.save
        format.html { redirect_to @config_document_template, notice: 'Document template was successfully created.' }
        format.json { render :show, status: :created, location: @config_document_template }
      else
        format.html { render :new }
        format.json { render json: @config_document_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /config/document_templates/1
  # PATCH/PUT /config/document_templates/1.json
  def update
    respond_to do |format|
      if @config_document_template.update(config_document_template_params)
        format.html { redirect_to @config_document_template, notice: 'Document template was successfully updated.' }
        format.json { render :show, status: :ok, location: @config_document_template }
      else
        format.html { render :edit }
        format.json { render json: @config_document_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /config/document_templates/1
  # DELETE /config/document_templates/1.json
  def destroy
    @config_document_template.destroy
    respond_to do |format|
      format.html { redirect_to config_document_templates_url, notice: 'Document template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_config_document_template
      @config_document_template = Config::DocumentTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def config_document_template_params
      params.require(:config_document_template).permit(:document_name, :document_type)
    end
end
