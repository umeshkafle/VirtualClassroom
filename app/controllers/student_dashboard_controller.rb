class StudentDashboardController < ApplicationController
  def index
  	@subjects = Subject.all
  end
end
