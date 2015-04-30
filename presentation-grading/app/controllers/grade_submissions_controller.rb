class GradeSubmissionsController < ApplicationController
  def new
    @classroom = Classroom.find params[:classroom_id]
    @presentation = Presentation.find params[:presentation_id]
    @grade_submission = GradeSubmission.new(presentation: @presentation)
  end

  def create
    grade_submission = GradeSubmission.new(params[:grade_submission])
    byebug
    if grade_submission.save
      flash[:notice] = "Grade for #{grade_submission.presentation.presenter_name} successfully submitted. Thank you!"
      redirect_to classroom_path(grade_submission.presentation.classroom)
    else
      render :new
    end
  end

  private

  def grade_submission_params
    params.require(:grade_submission).permit(
      :email,
      :appropriate_length,
      :design_pattern,
      :good_description,
      :good_support,
      :bad_description,
      :bad_support,
      :improvement,
      :good_agree,
      :bad_agree,
      :comments,
      :presentation_id)
  end
end
