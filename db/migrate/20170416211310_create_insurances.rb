class CreateInsurances < ActiveRecord::Migration[5.0]
  def change
    create_table :insurances do |t|
      t.date :start_date
      t.date :final_date
      t.string :apolice_number
      t.integer :has_sinister
      t.integer :status_apolice
      t.integer :id_productor
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
