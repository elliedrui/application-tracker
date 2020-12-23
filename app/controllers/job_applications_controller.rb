class JobApplicationsController < ApplicationController
  before_action :authentication_required
  before_action :set_job_application, only: [:show, :edit, :update, :destroy]

  def index
    @job_applications = JobApplication.all
  end

  def show
  end

  def new
    @job_application = JobApplication.new
  end

  def edit

  end

  def create
    @job_application = JobApplication.new(job_application_params)
    @job_application.save
    redirect_to job_application_path(@job_application)
  end

  def update
    @job_application.update(job_application_params)
    redirect_to job_application_path(@job_application)
  end

  def destroy
    @job_application.destroy
    redirect_to job_applications_path
  end

  private

  def set_job_application
    @job_application = JobApplication.find(params[:id])
  end

  def job_application_params
    params.require(:job_application).permit(:applied_date, :status, :open_position_id, :notes, :url)
  end

end
