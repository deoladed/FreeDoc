require 'faker'

5.times do
	City.create(name: Faker::Address.city)
end

10.times do
	Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

10.times do
	Doctor.create(first_name: Faker::StarWars.character, last_name: Faker::Name.last_name, postal_code: Faker::Address.zip_code, city: City.all.sample)
end

20.times do
	Appointment.create(date: Faker::Date.forward(60), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
end

10.times do 
	Specialty.create(name: Faker::Hacker.adjective)
end

10.times do
 Doctor.all.sample.specialties << Specialty.all.sample
end

10.times do
	Specialty.all.sample.doctors << Doctor.all.sample
end