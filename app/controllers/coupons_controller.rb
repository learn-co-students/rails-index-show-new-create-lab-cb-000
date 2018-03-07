class CouponsController < ApplicationController #inherits from application controller

  def index #index method
    @coupons = Coupon.all
  end

  def show #show method
    @coupon = Coupon.find(params[:id])
  end

  def new #new method (rails automatically will find new.html.erb)
  end

  def create
    @coupon = Coupon.new #new coupon instance
    @coupon[:coupon_code] = params[:coupon_code] #take in the coupon code as an argument
    @coupon[:store] = params[:store] #take in the store as an argument
    @coupon.save #save the info
    redirect_to coupon_path(@coupon) #redirect to coupon path
  end
end
