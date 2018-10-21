class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :relation_categories

  def relation_categories
    @categories = Bigcategory.order("RANDOM()")
  end
end
