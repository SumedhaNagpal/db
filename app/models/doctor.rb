class Doctor < ActiveRecord::Base
	has_many :vaccine_mappings
end
