class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name_company
      t.string :social_name__company
      t.string :number_cnpj_company
      t.string :numer_ie_company
      t.references :client, foreign_key: true
      t.references :individual, foreign_key: true

      t.timestamps
    end
  end
end
