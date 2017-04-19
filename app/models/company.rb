class Company < ApplicationRecord
  belongs_to :client
  belongs_to :individual

  validates_presence_of :name_company, :social_name__company, :number_cnpj_company, :numer_ie_company


end
