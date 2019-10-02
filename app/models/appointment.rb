class Appointment < ApplicationRecord
  belongs_to :student
  belongs_to :teacher

  validates :scheduled, presence: true
end
