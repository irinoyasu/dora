json.extract! carrier, :id, :carrier_id, :registration_date, :capital, :number_of_employees, :vehicle_type1, :vehicle_type2,
              :vehicle_type3, :vehicle_type4, :vehicle_type5, :presence_of_warehouse, :insurance_policy1, :insurance_policy2, :guarantee_amount, :created_at, :updated_at
json.url carrier_url(carrier, format: :json)
