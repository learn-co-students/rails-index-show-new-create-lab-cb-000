#coupons controller under main controller(appcontroller)
class CouponsController < ApplicationController

  def create
#creating coupon with code and store
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
#once done, redirect to coupon path
    redirect_to coupon_path(@coupon)
  end

  def show
#finding specific coupon : coupon/id
    @coupon = Coupon.find(params[:id])
  end

  def index
  end

  def new
  end

end
