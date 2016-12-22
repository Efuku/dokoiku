class Plan < ActiveRecord::Base
  belongs_to :user
  has_many :suggestions
  has_many :reports
end
