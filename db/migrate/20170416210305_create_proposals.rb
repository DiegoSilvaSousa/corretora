class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.integer :type_insurance
      t.string :objcet_insurance
      t.decimal :net_prize
      t.decimal :charges
      t.decimal :costs
      t.decimal :iof
      t.decimal :total
      t.integer :type_payment
      t.integer :number_payment
      t.decimal :comission_percentage
      t.string :observation
      t.integer :status
      t.references :individual, foreign_key: true
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
