class CategoriesController < ApplicationController
  def index
    @categories = Bigcategory.all
  end

  def show
    @category = Bigcategory.find(params[:id])
  end
end
