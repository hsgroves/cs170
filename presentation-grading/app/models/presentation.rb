class Presentation < ActiveRecord::Base
  DATE_CHOICES = {
    '5/5' => '05/May/2015'.to_date,
    '5/7' => '07/May/2015'.to_date,
    '5/12' => '12/May/2015'.to_date
  }
  DATES = [
    '05/May/2015'.to_date,
    '07/May/2015'.to_date,
    '12/May/2015'.to_date
  ]

  belongs_to :classroom

  validates :date, :presenter_name, :topics, presence: true
  validates :date, inclusion: { in: DATES }
  validate :classroom_presence

  has_many :grade_submissions

  def grade_count
    grade_submissions.count
  end

  private

  def classroom_presence
    errors.add(:classroom_id, "can't be blank") unless self.classroom_id
  end
end
