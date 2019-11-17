# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def seed_coupons(store_names)

  def rand
    r = ""
    3.times { r += ++Random.new.rand(8).to_s }
    3.times { r += ('A'..'Z').to_a.shuffle.first }
    r.split("").shuffle.join
  end

  store_names.each do |store_name|
    coupon_code = rand
    Coupon.create(coupon_code: coupon_code, store: store_name)
  end

  p "Created #{Coupon.count} Coupons"
end

STORE_NAMES = ["H&M", "Urban Outfitters", "ASOS", "Pacsun", "Tillys", "Zumiez"]

seed_coupons(STORE_NAMES)
