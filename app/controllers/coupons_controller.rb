

class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all

  end

# expect(response).to redirect_to Coupon.last

end
