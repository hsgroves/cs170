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

  validates :email, uniqueness: { scope: :presentation_id }

  belongs_to :presentation
end
