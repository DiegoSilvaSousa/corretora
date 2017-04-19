class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :email
      t.integer :active
      t.integer :imported
      t.text :observations
      t.integer :score
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
