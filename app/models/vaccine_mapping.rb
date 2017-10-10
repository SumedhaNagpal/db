class VaccineMapping < ActiveRecord::Base
  belongs_to :immunization
  belongs_to :user
  belongs_to :doctor
end
