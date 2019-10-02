# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :house
  has_many :appointments
  has_many :teachers, through: :appointments

  validates :name, presence: true
end
