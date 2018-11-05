class Talk < ApplicationRecord
  # mount_uploader :thumbnail, ImageUploader
  belongs_to :bigcategory
  belongs_to :smallcategory
  belongs_to :speaker

  def self.search(search)
    if search
      where(['title LIKE ?', "%#{search}%"])
    end
  end

  def self.summery_search(search)
    if search
      where(['summary LIKE ?', "%#{search}%"])
    end
  end
end
