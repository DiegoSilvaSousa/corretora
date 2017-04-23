class Client < ApplicationRecord
  has_one :user

  has_many :addresses, :dependent => :destroy, :inverse_of => :client
  has_many :phones, :dependent => :destroy, :inverse_of => :client

  validates :addresses, :presence => true
  validates :phones, :presence => true
  validates :user
  validates_presence_of :email

  accepts_nested_attributes_for :addresses
  accepts_nested_attributes_for :phones
  accepts_nested_attributes_for :user

  enum active: [:active, :inactive]
  enum imported: [:no, :yes]



end
