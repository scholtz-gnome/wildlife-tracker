class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
    @sightings = Sighting.all.reorder('created_at DESC')
  end

  def create
    @report = Report.new(report_params)

    if @report.save
      redirect_to '/reports'
    else
      render :new
    end
  end

  private

  def report_params
    params.require(:report).permit(:from, :to)
  end
end
