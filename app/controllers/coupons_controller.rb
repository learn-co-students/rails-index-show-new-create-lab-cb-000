class CouponsController < ApplicationController
  def create
    coupon = Coupon.new
    coupon.store = params[:store]
    coupon.coupon_code = params[:coupon_code]
    coupon.save

    redirect_to coupon
  end
end
