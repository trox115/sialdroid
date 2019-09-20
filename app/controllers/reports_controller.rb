class ReportsController < ApplicationController
  def new
    @reports=Report.new
  end
end
