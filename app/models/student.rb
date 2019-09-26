# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :house

  validates :name, presense: true
end
