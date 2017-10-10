class User < ActiveRecord::Base
	has_many :vaccine_mappings
end
