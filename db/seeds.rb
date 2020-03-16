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
  signing: '$ 1,999.00',
  month_fee: '$ 309.00',
  lease_cash: '$ 5,000.00',
  price: '$ 38,560.00',
  months: '36 Months',
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/PnOPevH.png'
},
{
  name: 'ES',
  description: '302-HP 3.5L V6',
  signing: '$ 2,999.00',
  month_fee: '$ 379.00',
  lease_cash: '$ 2,250.00',
  price: '$ 39,900.00',
  months: '36 Months',
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/OoHKJcm.png'
},
{
  name: 'GS',
  description: '311-HP 3.5L V6',
  signing: '$ 3,999.00',
  month_fee: '$ 549.00',
  lease_cash: '$ 3,000.00',
  price: '$ 51,065.00',
  months: '36 Months',
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/LrQ5j97.png'
},
{
  name: 'GS F',
  description: '467-HP 5.0L V8',
  signing: '$ 8,500.00',
  month_fee: '$ 17.05*',
  lease_cash: '$ 5,000.00',
  price: '$ 85,010.00',
  months: '60 Months',
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/kOgcI6u.png'
},
{
  name: 'LS',
  description: '416-HP 3.5L V6',
  signing: '$ 5,999.00',
  month_fee: '$ 799.00',
  lease_cash: '$ 2,250.00',
  price: '$ 75,450.00',
  months: '36 Months',
  car_type: 'SEDAN',
  image: 'https://i.imgur.com/lsXzikI.png'
},
{
  name: 'UX',
  description: '169-HP 2.0L I-4',
  signing: '$ 2,799.00',
  month_fee: '$ 309.00',
  lease_cash: '$ 2,000.00',
  price: '$ 32,300.00',
  months: '36 Months',
  car_type: 'SUV',
  image: 'https://i.imgur.com/oDl2tGI.png'
},
{
  name: 'NX',
  description: '235-HP 2.0L TURBO',
  signing: '$ 2,199.00',
  month_fee: '$ 349.00',
  lease_cash: '$ 3,000.00',
  price: '$ 36,870.00',
  months: '36 Months',
  car_type: 'SUV',
  image: 'https://i.imgur.com/FRvTdqA.png'
},
{
  name: 'RX',
  description: '3 ROW SEATING UP TO 7',
  signing: '$ 3,999.00',
  month_fee: '$ 409.00',
  lease_cash: '$ 1,750.00',
  price: '$ 44,150.00',
  months: '36 Months',
  car_type: 'SUV',
  image: 'https://i.imgur.com/MX1rA2g.png'
},
{
  name: 'GX',
  description: '301-HP V8, FULL-TIME 4WD',
  signing: '$ 3,999.00',
  month_fee: '$ 489.00',
  lease_cash: '$ 1,250.00',
  price: '$ 53,000.00',
  months: '36 Months',
  car_type: 'SUV',
  image: 'https://i.imgur.com/HLbvomS.png'
},
{
  name: 'LX',
  description: '383-HP V8, FULL-TIME 4WD',
  signing: '$ 5,999.00',
  month_fee: '$ 689.00',
  lease_cash: '$ 1,750.00',
  price: '$ 86,480.00',
  months: '36 Months',
  car_type: 'SUV',
  image: 'https://i.imgur.com/VmiMwr5.png'
},
{
  name: 'RC',
  description: '2.0L I-4 OR 3.5L V6',
  signing: '$ 3,999.00',
  month_fee: '$ 469.00',
  lease_cash: '$ 1,500.00',
  price: '$ 41,295.00',
  months: '36 Months',
  car_type: 'COUPE',
  image: 'https://i.imgur.com/XITj0h5.png'
},
{
  name: 'RC F',
  description: '472-HP 5.0L V8',
  signing: '$ 6,490.00',
  month_fee: '$ 17.05*',
  lease_cash: '$ 5,000.00',
  price: '$ 64,900.00',
  months: '60 Months',
  car_type: 'COUPE',
  image: 'https://i.imgur.com/IgO8Vys.png'
},
{
  name: 'LC',
  description: '471-HP 5.0L V8',
  signing: '$ 9,250.00',
  month_fee: '$ 16.67*',
  lease_cash: '$ 5,000.00',
  price: '$ 92,950.00',
  months: '60 Months',
  car_type: 'COUPE',
  image: 'https://i.imgur.com/reWOOJo.png'
},
{
  name: 'UX HYBRID',
  description: '39-MPG COMBINED ESTIMATE',
  signing: '$ 3,999.00',
  month_fee: '$ 325.00',
  lease_cash: '$ 2,000.00',
  price: '$ 34,350.00',
  months: '36 Months',
  car_type: 'HYBRID',
  image: 'https://i.imgur.com/oDl2tGI.png'
},
{
  name: 'NX HYBRID',
  description: '31-MPG COMBINED ESTIMATE',
  signing: '$ 2,999.00',
  month_fee: '$ 365.00',
  lease_cash: '$ 3,000.00',
  price: '$ 39.420.00',
  months: '36 Months',
  car_type: 'HYBRID',
  image: 'https://i.imgur.com/FRvTdqA.png'
},
{
  name: 'RX HYBRID',
  description: '30-MPG COMBINED ESTIMATE',
  signing: '$ 3,999.00',
  month_fee: '$ 475.00',
  lease_cash: '$ 1,750.00',
  price: '$ 46,800.00',
  months: '36',
  car_type: 'HYBRID',
  image: 'https://i.imgur.com/MX1rA2g.png'
},
{
  name: 'ES HYBRID',
  description: '44-MPG COMBINED ESTIMATE',
  signing: '$ 2,999.00',
  month_fee: '$ 429.00',
  lease_cash: '$ 2,250.00',
  price: '$ 41,810.00',
  months: '36 Months',
  car_type: 'HYBRID',
  image: 'https://i.imgur.com/OoHKJcm.png'
},
{
  name: 'LS HYBRID',
  description: '354 TOTAL SYSTEM HP',
  signing: '$ 8,000.00',
  month_fee: '$ 16.67*',
  lease_cash: '$ 5,000.00',
  price: '$ 80,010.00',
  months: '60 Months',
  car_type: 'HYBRID',
  image: 'https://i.imgur.com/lsXzikI.png'
},
{
  name: 'LC HYBRID',
  description: '354 TOTAL SYSTEM HP',
  signing: '$ 9,750.00',
  month_fee: '$ 16.67',
  lease_cash: '$ 5,000.00',
  price: '$ 97,510.00',
  months: '60 Months',
  car_type: 'HYBRID',
  image: 'https://i.imgur.com/reWOOJo.png'
}])