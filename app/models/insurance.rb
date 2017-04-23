class Insurance < ApplicationRecord
  belongs_to :user

  enum has_sinister:[:sim, :não]
  enum status_apolice: [:active, :expirated, :canceled]

  validates_presence_of :apolice_number
end
