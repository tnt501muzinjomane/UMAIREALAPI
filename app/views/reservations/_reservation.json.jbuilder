json.extract! reservation, :id, :guest_id, :table_id, :shift_id, :reservation_date, :reservation_time, :number_of_people, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
