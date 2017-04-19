class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :type_address
      t.string :name
      t.string :number
      t.string :add_on
      t.string :neighborhood
      t.string :city
      t.integer :state
      t.string :code_postal
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
