class Driver < ActiveRecord::Base
      belongs_to :mobility
      has_many :reservation
      has_secure_password
end
