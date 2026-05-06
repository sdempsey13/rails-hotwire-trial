class CreatePhotos < ActiveRecord::Migration[8.0]
  def change
    create_table :photos do |t|
      t.integer :photo_id
      t.integer :width
      t.integer :height
      t.string :url
      t.string :photographer
      t.string :photographer_url
      t.integer :photographer_id
      t.string :avg_color
      t.text :src_original
      t.text :src_large2x
      t.text :src_large
      t.text :src_medium
      t.text :src_small
      t.text :src_portrait
      t.text :src_landscape
      t.text :src_tiny
      t.text :alt

      t.timestamps
    end
  end
end
