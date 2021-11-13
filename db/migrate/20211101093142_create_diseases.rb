class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :disease do |t|
      t.integer :disease_number
      t.string :animal_category
      t.string :disease
      t.string :sym_part
      t.string :symptom
      t.string :url
    end
  end
end
