class Presentation < ActiveRecord::Base
  validates :date, :presenter, :topics, presence: true
end
