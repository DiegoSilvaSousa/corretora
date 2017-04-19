class CreateSinisters < ActiveRecord::Migration[5.0]
  def change
    create_table :sinisters do |t|
      t.string :number_sinister
      t.boolean :cnh_sent
      t.boolean :bo_send
      t.boolean :accident_with_vicitims
      t.text :location_of_the_clain
      t.string :id_mechanical
      t.text :observations_mechanical
      t.text :observations_third_parties
      t.date :date_sinister
      t.boolean :backup_car
      t.integer :days_backup_car
      t.integer :completed_sinister
      t.references :insurance, foreign_key: true
      t.references :individual, foreign_key: true

      t.timestamps
    end
  end
end
