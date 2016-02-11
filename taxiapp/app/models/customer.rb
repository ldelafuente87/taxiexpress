class Customer < ActiveRecord::Base
    has_many :reservation
    has_secure_password
end
