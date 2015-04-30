class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.current
  end

  def show
    @classroom = Classroom.find(params[:id])
    @presentations = Presentation.where(classroom_id: @classroom.id)
    if params[:date]
      @presentations = @presentations.where(date: params[:date])
    end
  end
end
