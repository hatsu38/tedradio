class CreateTalks < ActiveRecord::Migration[5.1]
  def change
    create_table :talks do |t|
      t.string :title
      t.text :summary
      t.text :sentence
      t.string :thumbnail
      t.string :hp
      t.time :taketime
      t.datetime :date
      t.references :bigcategory, foreign_key: true
      t.references :smallcategory, foreign_key: true
      t.references :speaker, foreign_key: true

      t.timestamps
    end
  end
end
