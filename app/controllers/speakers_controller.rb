class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
  end

  def show
    @speaker = Speaker.find(params[:id])
    @talks = Talk.order("RANDOM()")[0..11]
  end
end
