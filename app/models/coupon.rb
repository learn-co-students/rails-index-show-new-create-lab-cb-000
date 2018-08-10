class Coupon < ActiveRecord::Base
  def to_s
    return self.coupon_code + " " + self.store
  end
end
