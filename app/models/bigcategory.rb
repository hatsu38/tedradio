class Bigcategory < ApplicationRecord
  has_many :talks
  has_many :smallcategories
end
