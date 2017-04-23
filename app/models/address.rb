class Address < ApplicationRecord
  enum type_address: [:street, :avenue, :square, :road, :lane]

  enum state: [:AL, :AP, :AM, :BA, :CE, :DF, :ES, :GO, :MA, :MT, :MS, :MG, :PA, :PB, :PR,
    :PE, :PI, :RJ, :RN, :RS, :RO, :RR, :SC, :SP, :SE, :TO, :outher]

  belongs_to :client, optional: true, :inverse_of => :addresses

  validates_presence_of :type_address, :name, :number, :neighborhood, :city, :state, :code_postal
end
