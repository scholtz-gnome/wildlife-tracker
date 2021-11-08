class ReportSightingsController < ApplicationController
  def index
    @report = Report.find(params[:id])
    @sightings = Sighting.where(created_at: @report.from.beginning_of_day..@report.to.end_of_day).reorder('created_at DESC')
  end
end
