

class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all

  end

  def show
    @coupon = Coupon.find(params[:id])
  end
# expect(response).to redirect_to Coupon.last

  def create
    @coupon = Coupon.new
    @coupon.store = params[:store]
    @coupon.coupon_code = params[:coupon_code]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
  def new
    @coupon = Coupon.new

  end

end
