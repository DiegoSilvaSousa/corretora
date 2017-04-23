class Individual < ApplicationRecord
  enum genre: [:male, :female]
  enum marital_status: [:divorced, :married, :single, :separated, :widow, :stableUnion]
  enum category_driver: [:A, :B, :AB, :C, :D, :E]

  belongs_to :client

  validates_presence_of :name, :genre, :marital_status, :profession, :number_cpf, :number_identify

  accepts_nested_attributes_for :client


end
