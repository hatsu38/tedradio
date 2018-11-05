class Speaker < ApplicationRecord
  has_many :talks

  def self.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"])
    end
  end
end
