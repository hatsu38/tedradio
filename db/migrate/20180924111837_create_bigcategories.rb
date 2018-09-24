class CreateBigcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :bigcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
