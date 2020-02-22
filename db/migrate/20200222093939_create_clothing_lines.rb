class CreateClothingLines < ActiveRecord::Migration[5.2]
	def change
		create_table :clothing_lines do |t|
			t.string :name
			t.text :tag_line
			t.text :description
			t.references :user, foreign_key: true

			t.timestamps
		end
	end
end
