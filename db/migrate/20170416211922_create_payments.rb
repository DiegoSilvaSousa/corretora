class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.date :due_date
      t.decimal :plot_value
      t.string :status_payment
      t.references :user, foreign_key: true
      t.references :insurance, foreign_key: true
      t.references :proposal, foreign_key: true

      t.timestamps
    end
  end
end
