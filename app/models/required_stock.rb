class RequiredStock < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :immunization
end
