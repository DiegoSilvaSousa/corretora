class Client < ApplicationRecord
  belongs_to :user

  validates_presence_of :email

  has_many :addresses, :dependent => :destroy
  has_many :phones#, :dependent => :destroy


  accepts_nested_attributes_for :addresses

  accepts_nested_attributes_for :phones

  enum active: [:active, :inactive]
  enum imported: [:no, :yes]


end
