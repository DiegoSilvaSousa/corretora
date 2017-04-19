class CreateIndividuals < ActiveRecord::Migration[5.0]
  def change
    create_table :individuals do |t|
      t.string :name
      t.date :birthday_date
      t.integer :genre
      t.integer :marital_status
      t.string :profession
      t.string :number_cpf
      t.string :number_identify
      t.string :number_driver
      t.integer :category_driver
      t.date :expiration_date
      t.string :year_driver
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
