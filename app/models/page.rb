# frozen_string_literal: true

class Page < ApplicationRecord
  validates :title, :permalink, presence: true
  validates :permalink, uniqueness: true
end
