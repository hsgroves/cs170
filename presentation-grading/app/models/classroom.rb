class Classroom < ActiveRecord::Base
  has_many :presentations, dependent: :destroy

  scope :current, -> { where(current: true) }
end
