class ReportSightingsController < ApplicationController
  def index
    @report = Report.find(params[:id])
    @sightings = Sighting.where(date: @report.from.beginning_of_day..@report.to.end_of_day).reorder('date ASC')
  end
end
