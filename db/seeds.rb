# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Coupon.create(coupon_code:"FEB2019", store: "Walmart")
Coupon.create(coupon_code:"RANGER10", store: "Ranger Up")
Coupon.create(coupon_code:"BB2019", store: "BodyBuilding.com")
Coupon.create(coupon_code:"TARJE19", store: "Target")
