class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  # GET /activities
  # GET /activities.json
  def index
    @project = Project.find(params[:project_id])
    @activities = @project.activities.all
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    @project = Project.find(params[:project_id])
    @activity = @project.activities.find(params[:id])
  end

  # GET /activities/new
  def new
    @project = Project.find(params[:project_id])
    @activity = @project.activities.build
  end

  # GET /activities/1/edit
  def edit
    @project = Project.find(params[:project_id])
    @activity = @project.activities.find(params[:id])
  end

  # POST /activities
  # POST /activities.json
  def create
    @project = Project.find(params[:project_id])
    @activity = @project.activities.build(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to [@project, @activity], notice: 'Activity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to [@project, @activity], notice: 'Activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to project_activities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:title, :description)
    end
end
