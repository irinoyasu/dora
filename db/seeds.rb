# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
num_of_carriers = 100

vehicle_types = ['Truck', 'Van', 'Motorcycle', 'Bicycle', 'Car']

num_of_carriers.times do
  Carrier.create(
    carrier_id: Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3, min_numeric: 3),
    registration_date: Faker::Date.between(from: '2010-01-01', to: '2022-12-31'),
    capital: Faker::Number.between(from: 10000, to: 1000000),
    number_of_employees: Faker::Number.between(from: 1, to: 1000),
    vehicle_type1: vehicle_types.sample,
    vehicle_type2: vehicle_types.sample,
    vehicle_type3: vehicle_types.sample,
    vehicle_type4: vehicle_types.sample,
    vehicle_type5: vehicle_types.sample,
    presence_of_warehouse: Faker::Boolean.boolean,
    insurance_policy1: Faker::Alphanumeric.alphanumeric(number: 15, min_alpha: 5, min_numeric: 5),
    insurance_policy2: Faker::Alphanumeric.alphanumeric(number: 15, min_alpha: 5, min_numeric: 5),
    guarantee_amount: Faker::Number.between(from: 5000, to: 50000)
  )
end