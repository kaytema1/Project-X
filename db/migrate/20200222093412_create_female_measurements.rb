class CreateFemaleMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :female_measurements do |t|
      t.integer :bust
      t.integer :waist
      t.integer :hip
      t.integer :back_waist
      t.integer :crotch
      t.integer :arm_width
      t.integer :arm_length
      t.integer :height
      t.integer :back
      t.integer :trouser_length
      t.integer :apex_to_apex
      t.integer :shoulder_to_apex
      t.text :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
