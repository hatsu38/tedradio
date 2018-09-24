class Talk < ApplicationRecord
  belongs_to :bigcategory
  belongs_to :smallcategory
  belongs_to :speaker
end
