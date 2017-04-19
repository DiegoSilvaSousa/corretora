class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.integer :type_phone
      t.string :number
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
