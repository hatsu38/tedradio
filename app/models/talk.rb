class Talk < ApplicationRecord
  mount_uploader :thumbnail, ImageUploader
  belongs_to :bigcategory
  belongs_to :smallcategory
  belongs_to :speaker
end
