# frozen_string_literal: true

class House < ApplicationRecord
  validates :name, :points, presence: true
  validates :points, numericality: { only_integer: true }
end
