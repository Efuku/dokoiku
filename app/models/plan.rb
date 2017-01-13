class Plan < ActiveRecord::Base
  belongs_to :user
  has_many :suggestions
  has_many :reports

  validates :destination, presence: true
  validates :month, presence: true
end
