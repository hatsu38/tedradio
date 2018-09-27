class TalksController < ApplicationController
  def index
    @bigcategories = Bigcategory.order("RANDOM()")
  end

  def show
    @talk = Talk.find(params[:id])
  end
end
