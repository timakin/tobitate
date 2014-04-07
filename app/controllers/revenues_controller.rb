class RevenuesController < ApplicationController
  before_action :set_revenue, only: [:show, :edit, :update, :destroy]

  # GET /revenues
  # GET /revenues.json
  def index
    @project = Project.find(params[:project_id])
    @revenues = @project.revenues.all
  end

  # GET /revenues/1
  # GET /revenues/1.json
  def show
    @project = Project.find(params[:project_id])
    @revenues = @project.revenues.find(params[:id])
  end

  # GET /revenues/new
  def new
    @project = Project.find(params[:project_id])
    @revenue = @project.revenues.build
  end

  # GET /revenues/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @revenue = @project.revenues.find(params[:id])    
  end

  # POST /revenues
  # POST /revenues.json
  def create
    @project = Project.find(params[:project_id])    
    @revenue = @project.revenues.build(revenue_params)

    respond_to do |format|
      if @revenue.save
        format.html { redirect_to [@project, @revenue], notice: 'Revenue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @revenue }
      else
        format.html { render action: 'new' }
        format.json { render json: @revenue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revenues/1
  # PATCH/PUT /revenues/1.json
  def update
    respond_to do |format|
      if @revenue.update(revenue_params)
        format.html { redirect_to [@project, @revenue], notice: 'Revenue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @revenue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revenues/1
  # DELETE /revenues/1.json
  def destroy
    @revenue.destroy
    respond_to do |format|
      format.html { redirect_to project_revenues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revenue
      @revenue = Revenue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def revenue_params
      params.require(:revenue).permit(:title, :description, :price, :originality, :confirmed)
    end
end
