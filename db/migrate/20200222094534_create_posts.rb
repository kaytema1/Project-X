class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.references :user, foreign_key: true
      t.references :clothing_line, foreign_key: true

      t.timestamps
    end
  end
end
