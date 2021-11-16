class CreateKartes < ActiveRecord::Migration[6.0]
  def change
    create_table :kartes do |t|
      t.integer :karte_number
      t.integer :patient_number
      t.string :s
      t.string :o
      t.string :a
      t.string :p
      t.timestamps
    end
  end
end
