class TalksController < ApplicationController
  def index
    @bigcategories = Bigcategory.all
  end

  def show
    @talk = Talk.find(params[:id])
  end
end
