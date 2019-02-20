require 'pry'

class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    # binding.pry
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end

  def new
  end

  def show
  end

end
