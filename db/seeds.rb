# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all

Car.create!([{
  name: 'IS',
  description: '2.0L I-4 OR 3.5L V6',
  price: 38560.00,
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/PnOPevH.png'
},
{
  name: 'ES',
  description: '302-HP 3.5L V6',
  price: 39900.00,
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/OoHKJcm.png'
},
{
  name: 'GS',
  description: '311-HP 3.5L V6',
  price: 51065.00,
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/LrQ5j97.png'
},
{
  name: 'GS F',
  description: '467-HP 5.0L V8',
  price: 85010.00,
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/kOgcI6u.png'
},
{
  name: 'LS',
  description: '416-HP 3.5L V6',
  price: 75450.00,
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/lsXzikI.png'
},
{
  name: 'UX',
  description: '169-HP 2.0L I-4',
  price: 32300.00,
  car_type: 'SUV',
  image: 'https://i.imgur.com/oDl2tGI.png'
},
{
  name: 'NX',
  description: '235-HP 2.0L TURBO',
  price: 36870.00,
  car_type: 'SUV',
  image: 'https://i.imgur.com/FRvTdqA.png'
},
{
  name: 'RX',
  description: '3 ROW SEATING UP TO 7',
  price: 44150.00,
  car_type: 'SUV',
  image: 'https://i.imgur.com/MX1rA2g.png'
},
{
  name: 'GX',
  description: '301-HP V8, FULL-TIME 4WD',
  price: 53000.00,
  car_type: 'SUV',
  image: 'https://i.imgur.com/HLbvomS.png'
},
{
  name: 'LX',
  description: '383-HP V8, FULL-TIME 4WD',
  price: 86480.00,
  car_type: 'SUV',
  image: 'https://i.imgur.com/VmiMwr5.png'
},
{
  name: 'RC',
  description: '2.0L I-4 OR 3.5L V6',
  price: 41295.00,
  car_type: 'COUPE',
  image: 'https://i.imgur.com/XITj0h5.png'
},
{
  name: 'RC F',
  description: '472-HP 5.0L V8',
  price: 64900.00,
  car_type: 'COUPE',
  image: 'https://i.imgur.com/IgO8Vys.png'
},
{
  name: 'LC',
  description: '471-HP 5.0L V8',
  price: 92950.00,
  car_type: 'COUPE',
  image: 'https://i.imgur.com/QFYaVNp.png'
}])