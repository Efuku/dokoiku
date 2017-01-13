class Suggestion < ActiveRecord::Base
  belongs_to :user
  belongs_to :plan
  has_many :reports

  validates :text, presence: true
end
