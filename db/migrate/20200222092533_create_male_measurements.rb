class CreateMaleMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :male_measurements do |t|
      t.integer :back_width
      t.integer :arm_circumference
      t.integer :arm_length
      t.integer :chest_width
      t.integer :hip
      t.integer :hip_length
      t.integer :waist
      t.integer :tie
      t.integer :knee
      t.integer :around_ankle_bar
      t.integer :length
      t.text :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
