class Driver < ActiveRecord::Base
      has_one :mobility
      has_many :reservation
      has_secure_password
end
