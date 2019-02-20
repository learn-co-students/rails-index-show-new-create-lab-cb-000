require 'pry'

class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
    # binding.pry
  end

  def create
    # binding.pry
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    # @coupon = Coupon.create(params[:coupon])
    redirect_to coupon_path(@coupon)
  end

  def new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

end
