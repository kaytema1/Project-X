class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :user_type
      t.text :about_me
      t.string :gender
      t.string :unit_of_measure
      t.text :address
      t.string :city
      t.string :country
      t.string :country_code
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
