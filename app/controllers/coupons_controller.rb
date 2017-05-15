class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end

  def create
    coupon = Coupon.new
    coupon.store = params[:store]
    coupon.coupon_code = params[:coupon_code]
    coupon.save

    redirect_to coupon
  end
end
