# frozen_string_literal: true

class HousesController < ApplicationController
  def index
    @houses = House.all
  end
  # Automagically load up the associated view.
  # app/views/houses/index.html.erb
  # All instance variables are shared with the view.

  def show; end
end
