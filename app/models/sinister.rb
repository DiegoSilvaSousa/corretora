class Sinister < ApplicationRecord
  belongs_to :insurance
  belongs_to :individual

  validates_presence_of :number_sinister, :cnh_sent, :bo_send, :accident_with_vicitims, :location_of_the_clain, :id_mechanical,
                        :date_sinister, :backup_car
end
