# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Coupon.create(coupon_code: 'ABCD', store: 'Giant')
Coupon.create(coupon_code: 'FASB', store: 'Safeway')
Coupon.create(coupon_code: 'WAERSG', store: 'Food Lion')
Coupon.create(coupon_code: 'FDGAS', store: 'Weiss')
