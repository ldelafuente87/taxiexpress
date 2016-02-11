class Paymentmethod < ActiveRecord::Base
    has_one :reservation
end
