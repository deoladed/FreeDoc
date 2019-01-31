class City < ApplicationRecord
	has_many :doctors
	has_many :patient
	has_many :appointments
end
