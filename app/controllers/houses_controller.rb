# frozen_string_literal: true

class HousesController < ApplicationController
  def index
    @houses = House.order(:name)
  end
  # Automagically load up the associated view.
  # app/views/houses/index.html.erb
  # All instance variables are shared with the view.

  def show
    @house = House.find(params[:id])
  end
  # Automagically load up the associated view.
  # app/views/houses/show.html.erb
  # This view will get access to the @house variable.
end
