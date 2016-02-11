class Reservation < ActiveRecord::Base
  belongs_to :driver
  belongs_to :customer
  belongs_to :paymentmethod
  belongs_to :statu
  belongs_to :rate
end
