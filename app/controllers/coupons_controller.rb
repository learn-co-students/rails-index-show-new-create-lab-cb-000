class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    # isn't there a way to do the below less explicitly, something like just saying Coupon.create(params[:coupon]) since the all the params we need are nested under [:coupon]? Tried several things, didn't work
    @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    # session[:form_params] = params.inspect
    redirect_to coupon_path(@coupon)
  end

end