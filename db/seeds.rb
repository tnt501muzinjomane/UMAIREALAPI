# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 Restaurant.create(name: 'Galitos', email: 'galitos@sd.com', phone: '2409 1000')
Restaurant.create(name: 'KFC', email: 'kfc@sd.com', phone: '2409 1000')
Restaurant.create(name: 'Nandos', email: 'kfc@sd.com', phone: '2409 1000')
Restaurant.create(name: 'Futhis', email: 'kfc@sd.com', phone: '2409 1000')
Restaurant.create(name: 'Freest', email: 'kfc@sd.com', phone: '2409 1000')
Restaurant.create(name: 'Muzi Rest', email: 'kfc@sd.com', phone: '2409 1000')


Rtable.create(name: 'Table 1', min_guest: '10', max_guest: '50', restaurant_id: '1')
Rtable.create(name: 'Table 2', min_guest: '5', max_guest: '10', restaurant_id: '1')
Rtable.create(name: 'Table 3', min_guest: '10', max_guest: '50', restaurant_id: '1')


Shift.create(start_time: '09:00', end_time: '13:00', restaurant_id: '1')
Shift.create(start_time: '13:00', end_time: '23:00', restaurant_id: '1')

Reservation.create(guest_id: '1', table_id: '2', shift_id: '1', reservation_date: '22-09-2019', reservation_time: '13:00', number_of_people: '2', restaurant_id: '1')
Reservation.create(guest_id: '2', table_id: '1', shift_id: '1', reservation_date: '22-09-2019', reservation_time: '13:00', number_of_people: '12', restaurant_id: '1')
