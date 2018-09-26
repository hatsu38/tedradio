class SubcategoriesController < ApplicationController
  def show
    @subcategory = Smallcategory.find(params[:id])
  end
end
