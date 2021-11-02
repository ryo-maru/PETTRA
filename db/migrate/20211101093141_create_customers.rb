class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.integer :medical_record_number
      t.string :animal_major_classification
      t.string :animal_subcategory
      t.string :name
      t.date :last_visit_date

    end
  end
end
