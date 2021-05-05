class PublicpageController < ApplicationController
  def main

    @houses = House.recent
  end
end
