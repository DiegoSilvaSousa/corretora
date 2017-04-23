class Proposal < ApplicationRecord
  belongs_to :individual, optional: true
  belongs_to :company, optional: true
  belongs_to :user

  enum type_insurance: [:home, :car, :outher]
  enum type_payment: [:bank, :card]
  enum status: [:active, :canceled]

  validates_presence_of :type_insurance, :objcet_insurance, :net_prize, :charges, :costs, :iof, :total, :type_payment, :number_payment,
                        :comission_percentage



end
