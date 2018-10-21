class TalksController < ApplicationController
  def index
    @bigcategories = Bigcategory.order("RANDOM()")
  end

  def show
    @talk = Talk.find(params[:id])
    @relation_talk = @talk.smallcategory.talks.where.not(id: @talk.id).order("RANDOM()")[0..11]
  end
end
