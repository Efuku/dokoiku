class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :plan
  belongs_to :suggestion

  validates :destination, presence: true
  validates :month, presence: true
  validates :text, presence: true
end
