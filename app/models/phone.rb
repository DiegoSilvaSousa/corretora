class Phone < ApplicationRecord
  enum type_phone: [:cellphone, :work_phone, :home_phone, :outher]

  belongs_to :client, optional: true, :inverse_of => :phones

  validates_presence_of :type_phone, :number
end
