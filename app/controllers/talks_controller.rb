class TalksController < ApplicationController
  def index
      @bigcategories = Bigcategory.order("RANDOM()")
  end

  def search
      @speakers = Speaker.search(params[:search])
      @talks = Talk.search(params[:search])
      @speakers_talks_volume = @talks.count
      @speakers.each do |speaker|
        @speakers_talks_volume += speaker.talks.count
      end
      @perhaps = Talk.summery_search(params[:search]) if @speakers_talks_volume == 0
  end

  def show
    @talk = Talk.find(params[:id])
    @relation_talk = @talk.smallcategory.talks.where.not(id: @talk.id).order("RANDOM()")[0..11]
  end

end
