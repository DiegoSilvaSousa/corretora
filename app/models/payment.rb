class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :insurance
  belongs_to :proposal
end
