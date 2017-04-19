class Insurance < ApplicationRecord
  belongs_to :user

  enum has_sinister:[:sim, :não]
  enum status_apolice: [:active, :expirated, :canceled]

  validates_presence_of :start_date, :final_date, :apolice_number
end
