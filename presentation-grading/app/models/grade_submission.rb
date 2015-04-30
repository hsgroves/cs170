class GradeSubmission < ActiveRecord::Base
  validates(
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
    presence: true)

  validates(
    :appropriate_length,
    :design_pattern,
    :good_description,
    :good_support,
    :bad_description,
    :bad_support,
    :improvement,
    :good_agree,
    :bad_agree,
    inclusion: { in: (1..10).to_a })

  validate :email_unique_to_presentation

  belongs_to :presentation

  private

  def email_unique_to_presentation
    emails = self.presentation.grade_submissions.map {|x| x.email }
    if emails.include? self.email
      errors.add(:email, 'You have already submitted a grade for this presentation')
    end
  end
end
